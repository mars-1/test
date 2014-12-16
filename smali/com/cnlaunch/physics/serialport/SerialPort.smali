.class public Lcom/cnlaunch/physics/serialport/SerialPort;
.super Ljava/lang/Object;
.source "SerialPort.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialPort"

.field public static instance:Lcom/cnlaunch/physics/serialport/SerialPort;


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private mFileInputStream:Ljava/io/FileInputStream;

.field private mFileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/cnlaunch/physics/serialport/SerialPort;->instance:Lcom/cnlaunch/physics/serialport/SerialPort;

    .line 37
    const-string/jumbo v0, "serial_port"

    invoke-static {v0}, Lcom/cnlaunch/physics/serialport/util/LibraryLoader;->load(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .parameter "device"
    .parameter "baudrate"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1, p2, p3}, Lcom/cnlaunch/physics/serialport/SerialPort;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    .line 56
    const-string/jumbo v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6267\u884cnative open "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cnlaunch/physics/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u83b7\u53d6\u8f93\u5165\u548c\u8f93\u51fa\u6d41"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 61
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/cnlaunch/physics/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    .line 62
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/cnlaunch/physics/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 63
    return-void
.end method

.method public static getInsance(Ljava/lang/String;II)Lcom/cnlaunch/physics/serialport/SerialPort;
    .locals 2
    .parameter "device"
    .parameter "baudrate"
    .parameter "flags"

    .prologue
    .line 41
    sget-object v1, Lcom/cnlaunch/physics/serialport/SerialPort;->instance:Lcom/cnlaunch/physics/serialport/SerialPort;

    if-nez v1, :cond_0

    .line 43
    :try_start_0
    new-instance v1, Lcom/cnlaunch/physics/serialport/SerialPort;

    invoke-direct {v1, p0, p1, p2}, Lcom/cnlaunch/physics/serialport/SerialPort;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cnlaunch/physics/serialport/SerialPort;->instance:Lcom/cnlaunch/physics/serialport/SerialPort;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    :cond_0
    :goto_0
    sget-object v1, Lcom/cnlaunch/physics/serialport/SerialPort;->instance:Lcom/cnlaunch/physics/serialport/SerialPort;

    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 47
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static native open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
.end method


# virtual methods
.method public native close()V
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method
