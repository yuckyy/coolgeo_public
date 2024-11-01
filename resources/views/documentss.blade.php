

@section('documentss')

  @if(isset($documents[0]))
    <div id="sliderBigImages" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
      <!-- первая секция -->
      @if(isset($documents[0]))
      <div class="carousel-item active">
                    <section id="documentss" class="services section-bg">
                <div class="container">

                  <div class="section-title">
                    <h2>Нормативно-правова база</h2>
                    <p>В цьому розділі Ви маєте можливість ознацомитись із законодовчою та нормативно-правовою документацією.</p>
                  </div>

                  <div class="row big-table">
                      <div class="col-lg-3 col-md-6 icon-box ">
                      @foreach($documents as $index=>$item)
                      
                      <?php if($index == 4) break; ?>

                <div class="icon"><i class="icofont-tasks-alt"></i></div>
                <h4 class="title"><a href="{{$item->url ??  $item->getFileUrl('file')}}" target="_blank">{{$item->number}} {{\Carbon\Carbon::parse($item->published_at)->format('d.m.Y')}}</a></h4>
                <p class="description">{{$item->name}}</p>
              </div><div class="col-lg-3 col-md-6 icon-box">
              @endforeach
                  </div>
                </div>
              </section><!-- End Services Section -->
          </div>
        @endif  
          <!-- вторая секция -->
        @if(isset($documents[4]))  
          <div class="carousel-item">
          <section id="documents" class="services section-bg">
                <div class="container">

                  <div class="section-title">
                    <h2>Нормативно-правова база</h2>
                    <p>В цьому розділі Ви маєте можливість ознацомитись із законодовчою та нормативно-правовою документацією.</p>
                  </div>

                  <div class="row big-table">
                      <div class="col-lg-3 col-md-6 icon-box ">
                      <?php
                      
                      unset($documents[0]);
                      unset($documents[1]);
                      unset($documents[2]);
                      unset($documents[3]);?>
                      @foreach($documents as $index=>$item)
                      <?php if($index == 8) break; ?>
                      
                      <?//var_dump($index); ?>
                      
                <div class="icon"><i class="icofont-tasks-alt"></i></div>
                <h4 class="title"><a href="{{$item->url ??  $item->getFileUrl('file')}}" target="_blank">2189-VIII {{\Carbon\Carbon::parse($item->published_at)->format('d.m.Y')}}</a></h4>
                <p class="description">{{$item->name}}</p>
              </div><div class="col-lg-3 col-md-6 icon-box">
              @endforeach
                  </div>
                </div>
              </section><!-- End Services Section -->
          </div>
        @endif    
          <!-- третья секция -->
        @if(isset($documents[8]))    
          <div class="carousel-item">
          <section id="documents" class="services section-bg">
                <div class="container">

                  <div class="section-title">
                    <h2>Нормативно-правова база</h2>
                    <p>В цьому розділі Ви маєте можливість ознацомитись із законодовчою та нормативно-правовою документацією.</p>
                  </div>

                  <div class="row big-table">
                      <div class="col-lg-3 col-md-6 icon-box ">
                      <?php
                      
                      unset($documents[4]);
                      unset($documents[5]);
                      unset($documents[6]);
                      unset($documents[7]);?>
                      @foreach($documents as $index=>$item)
                      <?php if($index == 12) break; ?>
                      
                      <?//var_dump($index); ?>
                      
                      
                <div class="icon"><i class="icofont-tasks-alt"></i></div>
                <h4 class="title"><a href="{{$item->url ??  $item->getFileUrl('file')}}" target="_blank">2189-VIII {{\Carbon\Carbon::parse($item->published_at)->format('d.m.Y')}}</a></h4>
                <p class="description">{{$item->name}}</p>
              </div><div class="col-lg-3 col-md-6 icon-box">
              @endforeach
                  </div>
                </div>
              </section><!-- End Services Section -->
          </div>
        @endif      
          <!-- четвертая секция -->
        @if(isset($documents[12]))      
          <div class="carousel-item">
          <section id="documents" class="services section-bg">
                <div class="container">

                  <div class="section-title">
                    <h2>Нормативно-правова база</h2>
                    <p>В цьому розділі Ви маєте можливість ознацомитись із законодовчою та нормативно-правовою документацією.</p>
                  </div>

                  <div class="row big-table">
                      <div class="col-lg-3 col-md-6 icon-box ">
                      <?php
                      
                      unset($documents[8]);
                      unset($documents[9]);
                      unset($documents[10]);
                      unset($documents[11]);?>
                      @foreach($documents as $index=>$item)
                      <?php if($index == 16) break; ?>
                      
                      <?//var_dump($index); ?>
                      
                      
                <div class="icon"><i class="icofont-tasks-alt"></i></div>
                <h4 class="title"><a href="https://zakon.rada.gov.ua/laws/show/2189-19#Text" target="_blank">2189-VIII {{\Carbon\Carbon::parse($item->published_at)->format('d.m.Y')}}</a></h4>
                <p class="description">{{$item->name}}</p>
              </div><div class="col-lg-3 col-md-6 icon-box">
              @endforeach
                  </div>
                </div>
              </section><!-- End Services Section -->
          </div>
        @endif
        <!-- пятая секция -->
        @if(isset($documents[16]))      
          <div class="carousel-item">
          <section id="documents" class="services section-bg">
                <div class="container">

                  <div class="section-title">
                    <h2>Нормативно-правова база</h2>
                    <p>В цьому розділі Ви маєте можливість ознацомитись із законодовчою та нормативно-правовою документацією.</p>
                  </div>

                  <div class="row big-table">
                      <div class="col-lg-3 col-md-6 icon-box ">
                      <?php
                      
                      unset($documents[12]);
                      unset($documents[13]);
                      unset($documents[14]);
                      unset($documents[15]);?>
                      @foreach($documents as $index=>$item)
                      <?php if($index == 20) break; ?>
                      
                      <?//var_dump($index); ?>
                      
                      
                <div class="icon"><i class="icofont-tasks-alt"></i></div>
                <h4 class="title"><a href="https://zakon.rada.gov.ua/laws/show/2189-19#Text" target="_blank">2189-VIII {{\Carbon\Carbon::parse($item->published_at)->format('d.m.Y')}}</a></h4>
                <p class="description">{{$item->name}}</p>
              </div><div class="col-lg-3 col-md-6 icon-box">
              @endforeach
                  </div>
                </div>
              </section><!-- End Services Section -->
          </div>
        @endif
        <!-- шестая секция -->
        @if(isset($documents[20]))      
          <div class="carousel-item">
          <section id="documents" class="services section-bg">
                <div class="container">

                  <div class="section-title">
                    <h2>Нормативно-правова база</h2>
                    <p>В цьому розділі Ви маєте можливість ознацомитись із законодовчою та нормативно-правовою документацією.</p>
                  </div>

                  <div class="row big-table">
                      <div class="col-lg-3 col-md-6 icon-box ">
                      <?php
                      
                      unset($documents[16]);
                      unset($documents[17]);
                      unset($documents[18]);
                      unset($documents[19]);?>
                      @foreach($documents as $index=>$item)
                      <?php if($index == 24) break; ?>
                      
                      <?//var_dump($index); ?>
                      
                      
                <div class="icon"><i class="icofont-tasks-alt"></i></div>
                <h4 class="title"><a href="https://zakon.rada.gov.ua/laws/show/2189-19#Text" target="_blank">2189-VIII {{\Carbon\Carbon::parse($item->published_at)->format('d.m.Y')}}</a></h4>
                <p class="description">{{$item->name}}</p>
              </div><div class="col-lg-3 col-md-6 icon-box">
              @endforeach
                  </div>
                </div>
              </section><!-- End Services Section -->
          </div>
        @endif
        <!-- седьмая секция -->
        @if(isset($documents[24]))      
          <div class="carousel-item">
          <section id="documents" class="services section-bg">
                <div class="container">

                  <div class="section-title">
                    <h2>Нормативно-правова база</h2>
                    <p>В цьому розділі Ви маєте можливість ознацомитись із законодовчою та нормативно-правовою документацією.</p>
                  </div>

                  <div class="row big-table">
                      <div class="col-lg-3 col-md-6 icon-box ">
                      <?php
                      
                      unset($documents[20]);
                      unset($documents[21]);
                      unset($documents[22]);
                      unset($documents[23]);?>
                      @foreach($documents as $index=>$item)
                      <?php if($index == 28) break; ?>
                      
                      <?//var_dump($index); ?>
                      
                      
                <div class="icon"><i class="icofont-tasks-alt"></i></div>
                <h4 class="title"><a href="https://zakon.rada.gov.ua/laws/show/2189-19#Text" target="_blank">2189-VIII {{\Carbon\Carbon::parse($item->published_at)->format('d.m.Y')}}</a></h4>
                <p class="description">{{$item->name}}</p>
              </div><div class="col-lg-3 col-md-6 icon-box">
              @endforeach
                  </div>
                </div>
              </section><!-- End Services Section -->
          </div>
        @endif
      </div>
      <a class="carousel-control-prev" href="#sliderBigImages" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#sliderBigImages" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
      </a>
  </div>

  <!-- 
  <main id="main" class="">
      <section id="tariff" class="tariff faq">
          <div class="container">
              <div class="section-title">
              <h2>Нормативно-правова база</h2>
              </div>
              <div class="table-responsive">
                  <table class="table table-sm " style="font-size: small;">
                      <thead>
                          <tr>
                              <th scope="col" class="text-center" style="min-width: 40px;">#</th>
                              <th scope="col" class="text-center" style="min-width: 250px;">Назва документу</th>
                              <th scope="col" class="text-center" style="width: 150px;">Дата прийняття</th>
                          </tr>
                      </thead>
                      <tbody>
                      @foreach($documents as $index=>$item)
                          <tr>
                              <th scope="row">{{$index + 1}}</th>
                              <th scope="row"> <a href="{{$item->url ??  $item->getFileUrl('file')}}" target="_blank"> {{$item->name}} </a> </th>
                              <td class="text-center">{{\Carbon\Carbon::parse($item->published_at)->format('d.m.Y')}}</td>
                          </tr>
                      @endforeach
                      </tbody>
                  </table>
              </div>
          </div>
      </section>
  </main>
  -->

  @else

  @endif

@endsection
