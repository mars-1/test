.class Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;
.super Ljava/lang/Thread;
.source "LogcatHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/golo3/log/LogcatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogDumper"
.end annotation


# instance fields
.field cmds:Ljava/lang/String;

.field private logcatProc:Ljava/lang/Process;

.field private mPID:Ljava/lang/String;

.field private mReader:Ljava/io/BufferedReader;

.field private mRunning:Z

.field private out:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/cnlaunch/golo3/log/LogcatHelper;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/golo3/log/LogcatHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "pid"
    .parameter "dir"

    .prologue
    const/4 v2, 0x0

    .line 86
    iput-object p1, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->this$0:Lcom/cnlaunch/golo3/log/LogcatHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 80
    iput-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mRunning:Z

    .line 82
    iput-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->cmds:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    .line 87
    iput-object p2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mPID:Ljava/lang/String;

    .line 89
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "log-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/cnlaunch/golo3/log/MyDate;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 89
    iput-object v1, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    const-string/jumbo v1, "logcat -s gf"

    iput-object v1, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->cmds:Ljava/lang/String;

    .line 109
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 118
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->cmds:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 119
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 120
    iget-object v4, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 119
    iput-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, line:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mRunning:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_5

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 140
    iput-object v5, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 142
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_3

    .line 144
    :try_start_1
    iget-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 145
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 150
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_4

    .line 152
    :try_start_2
    iget-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 156
    :goto_2
    iput-object v5, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    .line 161
    .end local v1           #line:Ljava/lang/String;
    :cond_4
    :goto_3
    return-void

    .line 123
    .restart local v1       #line:Ljava/lang/String;
    :cond_5
    :try_start_3
    iget-boolean v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mRunning:Z

    if-eqz v2, :cond_1

    .line 126
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mPID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/golo3/log/MyDate;->getDateEN()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 130
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 135
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    iget-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v2, :cond_6

    .line 139
    iget-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 140
    iput-object v5, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 142
    :cond_6
    iget-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_7

    .line 144
    :try_start_5
    iget-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 145
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 150
    :cond_7
    :goto_4
    iget-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_4

    .line 152
    :try_start_6
    iget-object v2, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 156
    :goto_5
    iput-object v5, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    goto :goto_3

    .line 146
    :catch_1
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 153
    :catch_2
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 137
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 138
    iget-object v3, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v3, :cond_8

    .line 139
    iget-object v3, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 140
    iput-object v5, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 142
    :cond_8
    iget-object v3, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v3, :cond_9

    .line 144
    :try_start_7
    iget-object v3, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 145
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 150
    :cond_9
    :goto_6
    iget-object v3, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_a

    .line 152
    :try_start_8
    iget-object v3, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 156
    :goto_7
    iput-object v5, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    .line 159
    :cond_a
    throw v2

    .line 146
    :catch_3
    move-exception v0

    .line 147
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 153
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 154
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 146
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #line:Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 147
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 153
    .end local v0           #e:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 154
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public stopLogs()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->mRunning:Z

    .line 113
    return-void
.end method
