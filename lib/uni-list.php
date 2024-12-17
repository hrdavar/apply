
    <?php
    $result=select_all_sql('country','status=1');
    $counter = 1;
    foreach ($result as $value) {
        if ($counter % 3 == 1) {
            echo '<div class="grid md:grid-cols-3 gap-14 md:gap-5 mt-20">';
        }
    ?>
    <div data-aos="fade-up" class="bg-white shadow-xl p-6 text-center rounded-xl aos-init aos-animate">
        <div style="background: #5B72EE;" class="rounded-full w-16 h-16 flex items-center justify-center mx-auto shadow-lg transform -translate-y-12">
            <svg class="w-6 h-6 text-white" viewBox="0 0 33 46" fill="none" xmlns="http://www.w3.org/2000/svg">
                <img src="assets/img/<?=$value['img_id1']?>" alt="">
            </svg>
        </div>
        <a href="Universities-in-<?=str_replace(' ','-',$value['name'])?>">
        <h2 class="font-medium text-xl mb-3 lg:px-14 text-darken" title="Finding <?= $value['name']?> Universities">Universities in <?= $value['name']?></h2>
        <p class="px-4 text-gray-500">List of Universities in <?=$value['name']?></p>
        </a>
    </div>

    <?php
        if ($counter % 3 == 0) {
            echo '</div>';
        }
        $counter++;
    }
    if (($counter - 1) % 3 != 0) {
        echo '</div>';
    }
    ?>
