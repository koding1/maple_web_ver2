var global_data = [];

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
                $('#quiz-header').hide();
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
                    ans_comment = '',
                    selected = $answerEl.data('index'),
                    currentQuestionIndex = currentQuestion - 1,
                    correct = questions[currentQuestionIndex].correctIndex,
                    plus_score = 0;
                    
                $answerEl.addClass('correct');

                // response에 답변 tag 이름을 저장
                response = questions[currentQuestionIndex].selected_tag[selected];
                // 해당 답변에 대한 점수를 저장
                plus_score = questions[currentQuestionIndex].plus_score[selected];
                // 해당 답변에 대한 코멘트를 저장
                ans_comment = questions[currentQuestionIndex].ans_comment[selected];
                
                for (var i in tag_dict[response]) {
                    job_score[tag_dict[response][i]] += plus_score;
                }
                console.log(job_score);
                score++;

                $('#quiz-response').html(ans_comment);
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

                // $('#quiz-results').html(max_score_job(job_score)[0]);

                var chart_data = sorted_job(job_score);
                jQuery('#chart_main').show();
                draw_first(chart_data);
                
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
                
                jQuery('#chart_main').hide();
                
            },
            reset: function () {
                job_score = job_score_init();
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
                $('quiz-header').show();
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
        job_name = [
            '히어로',
            '팔라딘',
            '다크나이트',
            '불독',
            '썬콜',
            '비숍',
            '보마',
            '신궁',
            '패파',
            '나로',
            '섀도어',
            '듀블',
            '바이퍼',
            '캡틴',
            '캐슈',
            '소마',
            '플위',
            '윈브',
            '나워',
            '스커',
            '미하일',
            '아란',
            '에반',
            '배메',
            '와헌',
            '메카',
            '데슬',
            '데벤',
            '제논',
            '블래',
            '메르',
            '팬텀',
            '루미',
            '카이저',
            '엔버',
            '제로',
            '은월',
            '키네',
            '카데나',
            '일리움',
            '아크',
            '호영',
            '아델',
            '카인',
        ];
        for (var i = 0; i < job_name.length; i++) {
            job_score[job_name[i]] = 0;
        }

        return job_score;
    }

    // tag_dict 을 초기화
    function tag_dict_init() {
        var tag_dict = {};

        tag_dict['보스'] = [
            '듀블',
            '히어로',
            '불독',
            '비숍',
            '캐슈',
            '플위',
            '에반',
            '메카',
            '팬텀',
            '제로',
            '은월',
            '아크',
            '아델',
            '블래',
        ];
        tag_dict['사냥'] = [
            '패파',
            '엔버',
            '썬콜',
            '나로',
            '섀도어',
            '바이퍼',
            '에반',
            '메카',
            '루미',
            '키네',
            '아크',
            '호영',
            '아델',
        ];

        tag_dict['마리수 1티어'] = [
            '패파',
            '카데나',
            '은월',
            '섀도어',
            '에반',
            '키네',
            '엔버',
            '아크',
            '나로',
            '윈브',
            '팬텀',
        ];
        tag_dict['재획머신'] = [
            '패파',
            '나로',
            '섀도어',
            '바이퍼',
            '에반',
            '메카',
            '데벤',
            '루미',
            '엔버',
            '키네',
            '아델',
        ];

        tag_dict['가성비'] = [
            '히어로',
            '패파',
            '나로',
            '소마',
            '캐슈',
            '스커',
            '아란',
            '데벤',
            '블래',
            '팬텀',
            '루미',
            '엔버',
            '키네',
            '아크',
            '아델',
        ];
        tag_dict['중자본 효율'] = [''];
        tag_dict['투자 효율'] = [
            '불독',
            '비숍',
            '섀도어',
            '듀블',
            '바이퍼',
            '메카',
            '캐슈',
            '플위',
            '윈브',
            '에반',
            '아델',
            '팬텀',
            '제로',
            '은월',
            '카데나',
            '아크',
            '호영',
            '아델',
        ];

        tag_dict['전사'] = [
            '히어로',
            '팔라딘',
            '다크나이트',
            '소마',
            '미하일',
            '제로',
            '카이저',
            '아란',
            '데슬',
            '데벤',
            '제논',
            '블래',
            '아델',
        ];
        tag_dict['마법사'] = [
            '불독',
            '썬콜',
            '비숍',
            '플위',
            '에반',
            '배메',
            '루미',
            '일리움',
            '키네',
        ];
        tag_dict['도적'] = ['나로', '섀도어', '듀블', '나워', '제논', '팬텀', '카데나', '호영'];
        tag_dict['궁수'] = ['보마', '신궁', '패파', '윈브', '와헌', '메르'];
        tag_dict['해적'] = [
            '바이퍼',
            '캡틴',
            '캐슈',
            '스커',
            '메카',
            '제논',
            '엔버',
            '은월',
            '아크',
        ];

        tag_dict['STR'] = [
            '아크',
            '은월',
            '히어로',
            '팔라딘',
            '다크나이트',
            '소마',
            '미하일',
            '제로',
            '카이저',
            '아란',
            '데슬',
            '스커',
            '블래',
            '아델',
            '바이퍼',
            '캐슈',
        ];
        tag_dict['INT'] = [
            '불독',
            '썬콜',
            '비숍',
            '플위',
            '에반',
            '배메',
            '루미',
            '일리움',
            '키네',
        ];
        tag_dict['LUK'] = ['나로', '섀도어', '듀블', '나워', '팬텀', '카데나', '호영'];
        tag_dict['DEX'] = ['보마', '신궁', '패파', '윈브', '와헌', '메르', '캡틴', '메카', '엔버'];
        tag_dict['HP'] = ['데벤'];
        tag_dict['올스텟'] = ['제논'];

        tag_dict['텔레포트'] = ['불독', '썬콜', '비숍', '에반', '배메', '팬텀', '루미', '일리움'];
        tag_dict['점프'] = [
            '히어로',
            '팔라딘',
            '다크나이트',
            '보마',
            '신궁',
            '패파',
            '나로',
            '섀도어',
            '듀블',
            '바이퍼',
            '캡틴',
            '캐슈',
            '소마',
            '플위',
            '윈브',
            '나워',
            '스커',
            '미하일',
            '아란',
            '와헌',
            '메카',
            '데슬',
            '데벤',
            '제논',
            '블래',
            '메르',
            '팬텀',
            '카이저',
            '엔버',
            '제로',
            '은월',
            '키네',
            '카데나',
            '아크',
            '호영',
            '아델',
            '카인',
        ];
        
        
        tag_dict['필수 링크'] = ['메르', '에반', '아란', '데벤', '팬텀', '호영', '제로', '아크', '제논', '데슬', '키네', '일리움', '데슬', '보마', '신궁', '패파'];
        
        tag_dict['쉬운 접근'] = ['히어로', '팔라딘', '다크나이트', '불독', '썬콜', '비숍', '보마', '패파', '나로', '섀도어', '듀블', '바이퍼', '캡틴', '캐슈', '소마', '플위', '윈브', '스커', '미하일', '아란', '와헌', '데슬', '데벤', '제논', '팬텀', '루미', '카이저', '엔버', '은월', '아델'];
        tag_dict['신컨'] = ['신궁', '나워', '에반', '배메', '메카', '블래', '메르', '제로', '키네', '카데나', '일리움', '아크', '호영'];
        
        tag_dict['유니크'] = ['팔라딘', '다크나이트', '보마', '신궁', '미하일', '일리움', '캡틴', '블래', '배메', '스커', '호영', '나워', '메카', '와헌', '카이저', '카데나', '키네', '소마', '루미', '데슬', '플위', '제논', '메르'];
        
        tag_dict['연계'] = ['패파', '아크', '아란', '호영', '메르', '카데나', '에반', '제로', '스커', '블래', '일리움'];
        
        tag_dict['딜러'] = ['아델', '듀블', '패파', '썬콜', '소마', '아크', '히어로', '섀도어', '데벤', '나로', '바이퍼', '다크나이트', '엔버', '아란', '호영', '윈브', '팬텀', '은월', '키네', '캐슈', '카이저', '루미', '메르', '에반', '카데나', '데슬', '불독', '스커', '나워', '플위', '신궁', '제논', '블래' , '배메', '캡틴', '보마', '와헌', '일리움', '메카'];
        tag_dict['서포터'] = ['제로', '비숍', '팔라딘', '팬텀', '은월', '플위', '와헌'];
        
        tag_dict['노바'] = ['카이저', '엔버', '카데나'];
        tag_dict['데몬'] = ['데벤', '데슬'];
        tag_dict['레지스탕스'] = ['블래', '배메', '와헌', '메카', '제논'];
        tag_dict['레프'] = ['아델', '일리움', '아크'];
        tag_dict['모험가'] = ['히어로', '팔라딘', '다크나이트', '불독', '썬콜', '비숍', '보마', '신궁', '패파', '나로', '섀도어', '듀블', '바이퍼', '캡틴', '캐슈'];
        tag_dict['시그너스'] = ['소마', '미하일', '플위', '윈브', '나워', '스커'];
        tag_dict['아니마'] = ['호영'];
        tag_dict['영웅'] = ['아란', '에반', '루미', '메르', '팬텀', '은월'];
        tag_dict['초능력자'] = ['키네'];
        tag_dict['초월자'] = ['제로'];
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
    function sorted_job(job_score) {
        // Create items array
        var items = Object.keys(job_score).map(function (key) {
            return [key, job_score[key]];
        });

        // Sort the array based on the second element
        items.sort(function (first, second) {
            return second[1] - first[1];
        });
        
        return items;
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
        restartButtonText: '다시 해볼래요 !',
    };

    $.fn.quiz = function (options) {
        return this.each(function () {
            new $.quiz(this, options);
        });
    };
    function draw_first(chart_data) {
        google.load('visualization', '1', { packages: ['corechart'] });
        google.setOnLoadCallback(function(){ drawCharts(chart_data) });
    }

    function drawCharts(chart_data) {
        // actual bar chart data
        var barData = make_data(chart_data);
        // set bar chart options
        var barOptions = {
            focusTarget: 'category',
            backgroundColor: 'transparent',
            colors: ['cornflowerblue', 'tomato'],
            fontName: 'Open Sans',
            chartArea: {
                left: 0,
                top: 10,
                width: '100%',
                height: '70%',
            },
            bar: {
                groupWidth: '85%',
            },
            hAxis: {
                textStyle: {
                    fontSize: 11,
                },
            },
            vAxis: {
                minValue: 0,
                maxValue: chart_data[1][1],
                baselineColor: '#DDD',
                gridlines: {
                    color: '#DDD',
                    count: 4,
                },
                textStyle: {
                    fontSize: 11,
                },
            },
            legend: {
                position: 'bottom',
                textStyle: {
                    fontSize: 12,
                },
            },
            animation: {
                duration: 1200,
                easing: 'out',
                startup: true,
            },
        };
        // draw bar chart twice so it animates
        var barChart = new google.visualization.ColumnChart(document.getElementById('bar-chart'));
        //barChart.draw(barZeroData, barOptions);
        barChart.draw(barData, barOptions);
    }
    function make_data(chart_data) {
        // var barData = google.visualization.arrayToDataTable([
        //             ['Day', 'Page Views'],
        //             ['Sun', 1050],
        //             ['Mon', 1370],
        //             ['Tue', 660],
        //             ['Wed', 1030],
        //             ['Thu', 1000],
        //             ['Fri', 1170],
        //             ['Sat', 660],
        //         ]);
        
        chart_data.unshift(['직업 이름', '점수'])
        console.log(chart_data);
        // console.log(items.slice(0, 5));
        var barData = google.visualization.arrayToDataTable(chart_data.slice(0, 20));
        
        return barData;
    }
})(jQuery, window, document);