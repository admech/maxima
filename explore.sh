cd lib
maxima --batch-string="\
>         sol_dir: \"$scenario\" $\
>         root_dir: \"`pwd`/..\" $\
>         sol_base_dir: concat(root_dir, \"/sol\") $\
>         batchload(\"explore.mac\") $ "
