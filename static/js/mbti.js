(function ($, window, document, undefined) {
    'use strict';

    $.quiz = function (el, options) {
        var base = this;
        var tag_dict = {};
        var job_score = {};

        job_score = job_score_init();
        tag_dict = tag_dict_init();

        // Access to jQuery version of element
        base.$el = $(el);

        // Add a reverse reference to the DOM object
        base.$el.data('quiz', base);

        base.options = $.extend($.quiz.defaultOptions, options);

        var questions = base.options.questions,
            numQuestions = questions.length,
            startScreen = base.options.startScreen,
            startButton = base.options.startButton,
            homeButton = base.options.homeButton,
            resultsScreen = base.options.resultsScreen,
            gameOverScreen = base.options.gameOverScreen,
            nextButtonText = base.options.nextButtonText,
            finishButtonText = base.options.finishButtonText,
            restartButtonText = base.options.restartButtonText,
            currentQuestion = 1,
            score = 0,
            answerLocked = false;

        base.methods = {
            init: function () {
                base.methods.setup();

                $(document).on('click', startButton, function (e) {
                    e.preventDefault();
                    base.methods.start();
                });

                $(document).on('click', homeButton, function (e) {
                    e.preventDefault();
                    base.methods.home();
                });

                $(document).on('click', '.answers a', function (e) {
                    e.preventDefault();
                    base.methods.answerQuestion(this);
                });

                $(document).on('click', '#quiz-next-btn', function (e) {
                    e.preventDefault();
                    base.methods.nextQuestion();
                });

                $(document).on('click', '#quiz-finish-btn', function (e) {
                    e.preventDefault();
                    base.methods.finish();
                });

                $(document).on('click', '#quiz-restart-btn, #quiz-retry-btn', function (e) {
                    e.preventDefault();
                    base.methods.restart();
                });
            },
            setup: function () {
                var quizHtml = '';

                if (base.options.counter) {
                    quizHtml += '<div id="quiz-counter"></div>';
                }

                quizHtml += '<div id="questions">';
                $.each(questions, function (i, question) {
                    quizHtml += '<div class="question-container">';
                    quizHtml += '<p class="question">' + question.q + '</p>';
                    quizHtml += '<ul class="answers">';
                    $.each(question.options, function (index, answer) {
                        quizHtml +=
                            '<li><a href="#" data-index="' + index + '">' + answer + '</a></li>';
                    });
                    quizHtml += '</ul>';
                    quizHtml += '</div>';
                });
                quizHtml += '</div>';

                // if results screen not in DOM, add it
                if ($(resultsScreen).length === 0) {
                    quizHtml += '<div id="' + resultsScreen.substr(1) + '">';
                    quizHtml += '<p id="quiz-results"></p>';
                    quizHtml += '</div>';
                }

                quizHtml += '<div id="quiz-controls">';
                quizHtml += '<p id="quiz-response"></p>';
                quizHtml += '<div id="quiz-buttons">';
                quizHtml += '<a href="#" id="quiz-next-btn">' + nextButtonText + '</a>';
                quizHtml += '<a href="#" id="quiz-finish-btn">' + finishButtonText + '</a>';
                quizHtml += '<a href="#" id="quiz-restart-btn">' + restartButtonText + '</a>';
                quizHtml += '</div>';
                quizHtml += '</div>';

                base.$el.append(quizHtml).addClass('quiz-container quiz-start-state');

                $('#quiz-counter').hide();
                $('.question-container').hide();
                $(gameOverScreen).hide();
                $(resultsScreen).hide();
                $('#quiz-controls').hide();
            },
            start: function () {
                base.$el.removeClass('quiz-start-state').addClass('quiz-questions-state');
                $(startScreen).hide();
                $('#quiz-controls').hide();
                $('#quiz-finish-btn').hide();
                $('#quiz-restart-btn').hide();
                $('#questions').show();
                $('#quiz-counter').show();
                $('.question-container:first-child').show().addClass('active-question');
                base.methods.updateCounter();
            },
            answerQuestion: function (answerEl) {
                if (answerLocked) {
                    return;
                }
                answerLocked = true;

                var $answerEl = $(answerEl),
                    response = '',
                    selected = $answerEl.data('index'),
                    currentQuestionIndex = currentQuestion - 1,
                    correct = questions[currentQuestionIndex].correctIndex,
                    plus_score = 0;
                
                $answerEl.addClass('correct');
                
                // response에 답변 tag 이름을 저장
                response = questions[currentQuestionIndex].selected_tag[selected];
                // 해당 답변에 대한 점수를 저장
                plus_score = questions[currentQuestionIndex].plus_score[selected];
                
                for (var i in tag_dict[response]) {
                    job_score[tag_dict[response][i]]+=plus_score;
                }
                console.log(job_score);
                score++;

                $('#quiz-response').html(response);
                $('#quiz-controls').fadeIn();

                if (typeof base.options.answerCallback === 'function') {
                    base.options.answerCallback(
                        currentQuestion,
                        selected,
                        questions[currentQuestionIndex]
                    );
                }
            },
            nextQuestion: function () {
                answerLocked = false;

                $('.active-question')
                    .hide()
                    .removeClass('active-question')
                    .next('.question-container')
                    .show()
                    .addClass('active-question');

                $('#quiz-controls').hide();

                // check to see if we are at the last question
                if (++currentQuestion === numQuestions) {
                    $('#quiz-next-btn').hide();
                    $('#quiz-finish-btn').show();
                }

                base.methods.updateCounter();

                if (typeof base.options.nextCallback === 'function') {
                    base.options.nextCallback();
                }
            },
            gameOver: function (response) {
                // if gameover screen not in DOM, add it
                if ($(gameOverScreen).length === 0) {
                    var quizHtml = '';
                    quizHtml += '<div id="' + gameOverScreen.substr(1) + '">';
                    quizHtml += '<p id="quiz-gameover-response"></p>';
                    quizHtml +=
                        '<p><a href="#" id="quiz-retry-btn">' + restartButtonText + '</a></p>';
                    quizHtml += '</div>';
                    base.$el.append(quizHtml);
                }
                $('#quiz-gameover-response').html(response);
                $('#quiz-counter').hide();
                $('#questions').hide();
                $('#quiz-finish-btn').hide();
                $(gameOverScreen).show();
            },
            finish: function () {
                base.$el.removeClass('quiz-questions-state').addClass('quiz-results-state');
                $('.active-question').hide().removeClass('active-question');
                $('#quiz-counter').hide();
                $('#quiz-response').hide();
                $('#quiz-finish-btn').hide();
                $('#quiz-next-btn').hide();
                $('#quiz-restart-btn').show();
                $(resultsScreen).show();
                var resultsStr = base.options.resultsFormat
                    .replace('%score', score)
                    .replace('%total', numQuestions);

                $('#quiz-results').html(max_score_job(job_score)[0]);

                if (typeof base.options.finishCallback === 'function') {
                    base.options.finishCallback();
                }
            },
            restart: function () {
                base.methods.reset();
                base.$el.addClass('quiz-questions-state');
                $('#questions').show();
                $('#quiz-counter').show();
                $('.question-container:first-child').show().addClass('active-question');
                base.methods.updateCounter();
            },
            reset: function () {
                answerLocked = false;
                currentQuestion = 1;
                score = 0;
                $('.answers a').removeClass('correct incorrect');
                base.$el.removeClass().addClass('quiz-container');
                $('#quiz-restart-btn').hide();
                $(gameOverScreen).hide();
                $(resultsScreen).hide();
                $('#quiz-controls').hide();
                $('#quiz-response').show();
                $('#quiz-next-btn').show();
                $('#quiz-counter').hide();
                $('.active-question').hide().removeClass('active-question');
            },
            home: function () {
                base.methods.reset();
                base.$el.addClass('quiz-start-state');
                $(startScreen).show();

                if (typeof base.options.homeCallback === 'function') {
                    base.options.homeCallback();
                }
            },
            updateCounter: function () {
                var countStr = base.options.counterFormat
                    .replace('%current', currentQuestion)
                    .replace('%total', numQuestions);
                $('#quiz-counter').html(countStr);
            },
        };

        base.methods.init();
    };
    
    // job_score 를 초기화
    function job_score_init() {
        var job_score = {};
        var job_name = [];
        job_name = ['히어로', '팔라딘', '다크나이트', '불독', '썬콜', '비숍', 
                  '보마', '신궁', '패파', '나로', '섀도어', '듀블', 
                  '바이퍼', '캡틴', '캐슈', '소마', '플위', '윈브',
                  '나워', '스커', '미하일', '아란', '에반', '배메',
                  '와헌', '메카', '데슬', '데벤', '제논', '블래',
                  '메르', '팬텀', '루미', '카이저', '엔버', '제로',
                  '은월', '키네', '카데나', '일리움', '아크', '호영', '아델', '카인'];
        for (var i = 0 ; i<job_name.length; i++)
        {
            job_score[job_name[i]] = 0;
        }
        
        return job_score;
    }
    
    // tag_dict 을 초기화
    function tag_dict_init() {
        var tag_dict = {};

        tag_dict['보스'] = ['듀블', '히어로', '불독', '비숍', '캐슈', '플위', '에반', '메카', '팬텀', '제로', '은월', '아크', '아델', '블래'];
        tag_dict['사냥'] = ['패파', '엔버', '썬콜', '나로', '섀도어', '바이퍼', '에반', '메카', '루미', '키네', '아크', '호영', '아델'];
        
        tag_dict['마리수 1티어'] = ['패파', '카데나', '은월', '섀도어', '에반', '키네', '엔버', '아크', '나로', '윈브', '팬텀'];
        tag_dict['재획머신'] = ['패파', '나로', '섀도어', '바이퍼', '에반', '메카', '데벤', '루미', '엔버', '키네', '아델'];
        
        tag_dict['가성비'] = ['히어로', '패파', '나로', '소마', '캐슈', '스커', '아란', '데벤', '블래', '팬텀', '루미', '엔버', '키네', '아크', '아델'];
        tag_dict['중자본 효율'] = [''];
        tag_dict['투자 효율'] = ['불독', '비숍', '섀도어', '듀블', '바이퍼', '메카', '캐슈', '플위', '윈브', '에반', '아델', '팬텀', '제로', '은월', '카데나', '아크', '호영', '아델'];
        
        tag_dict['전사'] = ['히어로', '팔라딘', '다크나이트', '소마', '미하일', '제로', '카이저', '아란', '데슬', '데벤', '제논', '블래', '아델'];
        tag_dict['마법사'] = ['불독', '썬콜', '비숍', '플위', '에반', '배메', '루미', '일리움', '키네'];
        tag_dict['도적'] = ['나로', '섀도어', '듀블', '나워', '제논', '팬텀', '카데나', '호영'];
        tag_dict['궁수'] = ['보마', '신궁', '패파', '윈브', '와헌', '메르'];
        tag_dict['해적'] = ['바이퍼', '캡틴', '캐슈', '스커', '메카', '제논', '엔버', '은월', '아크'];
        
        tag_dict['STR'] = ['아크', '은월', '히어로', '팔라딘', '다크나이트', '소마', '미하일', '제로', '카이저', '아란', '데슬', '스커',  '블래', '아델', '바이퍼', '캐슈'];
        tag_dict['INT'] = ['불독', '썬콜', '비숍', '플위', '에반', '배메', '루미', '일리움', '키네'];
        tag_dict['LUK'] = ['나로', '섀도어', '듀블', '나워', '팬텀', '카데나', '호영'];
        tag_dict['DEX'] = ['보마', '신궁', '패파', '윈브', '와헌', '메르', '캡틴', '메카', '엔버'];
        tag_dict['HP'] = ['데벤'];
        tag_dict['올스텟'] = ['제논'];
        
        tag_dict['텔레포트'] = ['불독', '썬콜', '비숍', '에반', '배메', '팬텀', '루미', '일리움']
        tag_dict['점프'] = ['히어로', '팔라딘', '다크나이트', 
                  '보마', '신궁', '패파', '나로', '섀도어', '듀블', 
                  '바이퍼', '캡틴', '캐슈', '소마', '플위', '윈브',
                  '나워', '스커', '미하일', '아란',
                  '와헌', '메카', '데슬', '데벤', '제논', '블래',
                  '메르', '팬텀', '카이저', '엔버', '제로',
                  '은월', '키네', '카데나', '아크', '호영', '아델', '카인'];
        
        
        return tag_dict;
    }
    
    // 가장 높은 점수를 받은 직업이름(들)과 그 점수를 리턴
    function max_score_job(job_score) {
        var score = 0;
        var job_name = [];

        for (const [key, value] of Object.entries(job_score)) {
            if (value > score) {
                score = value;

                job_name = [];
                job_name.push(key);
            } else if (value == score) {
                job_name.push(key);
            }
        }
        console.log(score);
        console.log(job_name);

        return [job_name, score];
    }

    $.quiz.defaultOptions = {
        allowIncorrect: true,
        counter: true,
        counterFormat: '%current/%total',
        startScreen: '#quiz-start-screen',
        startButton: '#quiz-start-btn',
        homeButton: '#quiz-home-btn',
        resultsScreen: '#quiz-results-screen',
        resultsFormat: 'You got %score out of %total correct!',
        gameOverScreen: '#quiz-gameover-screen',
        nextButtonText: 'Next',
        finishButtonText: 'Finish',
        restartButtonText: 'Restart',
    };

    $.fn.quiz = function (options) {
        return this.each(function () {
            new $.quiz(this, options);
        });
    };
})(jQuery, window, document);