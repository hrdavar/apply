
<div class="relative overflow-x-auto shadow-md sm:rounded-lg">
    <div class="w-728 h-90 border border-1 m-1 p-1">
        <?php
        $result=select_row_sql('advertisement','id=1');
        echo $result['ads'];
        ?>

    </div>
    <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr>
                <th scope="col" class="px-6 py-3"></th>
                <th scope="col" class="px-6 py-3"></th>
                <th scope="col" class="px-6 py-3"></th>
                <th scope="col" class="px-6 py-3">
Ranking
                </th>
                <th scope="col" class="px-6 py-3">
Action
                </th>
            </tr>
        </thead>
        <tbody>
        <?php
        $page_info = page_info(page_url());
        $condition = "id=".$page_info['uni_id'];
        $result=select_all_sql('university',$condition);
        foreach ($result as $value) {

            ?>

            <tr>
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white"></th>
                <td class="px-6 py-4"><?=$value['name']?></td>
                <td class="px-6 py-4">coming soon</td>
                <td class="px-6 py-4">coming soon</td>
                <td class="px-6 py-4">
                    <a href="" target="_blank" class="font-medium text-blue-600 dark:text-blue-500 hover:underline">coming soon</a>
                </td>
            </tr>
            <?php
        }
            ?>
        </tbody>
    </table>
</div>