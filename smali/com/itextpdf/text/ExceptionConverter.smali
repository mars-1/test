.class public Lcom/itextpdf/text/ExceptionConverter;
.super Ljava/lang/RuntimeException;
.source "ExceptionConverter.java"


# static fields
.field private static final serialVersionUID:J = 0x782614f206d87cb7L


# instance fields
.field private ex:Ljava/lang/Exception;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .parameter "ex"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/itextpdf/text/ExceptionConverter;->ex:Ljava/lang/Exception;

    .line 73
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/text/ExceptionConverter;->prefix:Ljava/lang/String;

    .line 74
    return-void

    .line 73
    :cond_0
    const-string/jumbo v0, "ExceptionConverter: "

    goto :goto_0
.end method

.method public static final convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .locals 1
    .parameter "ex"

    .prologue
    .line 85
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 86
    check-cast p0, Ljava/lang/RuntimeException;

    .line 88
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .prologue
    .line 158
    return-object p0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/itextpdf/text/ExceptionConverter;->ex:Ljava/lang/Exception;

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/itextpdf/text/ExceptionConverter;->ex:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/itextpdf/text/ExceptionConverter;->ex:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 125
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/ExceptionConverter;->printStackTrace(Ljava/io/PrintStream;)V

    .line 126
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 134
    monitor-enter p1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/text/ExceptionConverter;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/itextpdf/text/ExceptionConverter;->ex:Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 137
    monitor-exit p1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 145
    monitor-enter p1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/text/ExceptionConverter;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/itextpdf/text/ExceptionConverter;->ex:Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 148
    monitor-exit p1

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/text/ExceptionConverter;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/text/ExceptionConverter;->ex:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
