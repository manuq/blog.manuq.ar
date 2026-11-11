+++
date = '{{ now.Format "2006-01-02" }}T00:00:00-00:00'
title = '{{ replace .File.ContentBaseName "-" " " | title }}'
summary = 'some summary'
+++
