fprintf(1,'Executing %s at %s:\n',mfilename(),datestr(now));
ver,
try,icatb_batch_file_run('/output/local0/simulatorRun/gica_cmd_gica_batch.m')
,catch ME,
fprintf(2,'MATLAB code threw an exception:\n');
fprintf(2,'%s\n',ME.message);
if length(ME.stack) ~= 0, fprintf(2,'File:%s\nName:%s\nLine:%d\n',ME.stack.file,ME.stack.name,ME.stack.line);, end;
end;