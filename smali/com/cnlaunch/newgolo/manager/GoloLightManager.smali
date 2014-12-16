.class public Lcom/cnlaunch/newgolo/manager/GoloLightManager;
.super Ljava/lang/Object;
.source "GoloLightManager.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "gpio_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close()V
    .locals 3

    .prologue
    .line 23
    const-string/jumbo v0, "PM"

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/newgolo/manager/GoloLightManager;->setValue(Ljava/lang/String;II)I

    .line 24
    return-void
.end method

.method public static getValue(Ljava/lang/String;I)I
    .locals 2
    .parameter "port"
    .parameter "num"

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/cnlaunch/newgolo/manager/GoloLightManager;->native_gpio_getValue(Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, ret:I
    return v0
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 13
    const-string/jumbo v0, "PM"

    const/4 v1, 0x5

    const-string/jumbo v2, "out"

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/newgolo/manager/GoloLightManager;->setDirection(Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    return-void
.end method

.method public static native native_gpio_getValue(Ljava/lang/String;I)I
.end method

.method public static native native_gpio_setDirection(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static native native_gpio_setValue(Ljava/lang/String;II)I
.end method

.method public static open()V
    .locals 3

    .prologue
    .line 18
    const-string/jumbo v0, "PM"

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/newgolo/manager/GoloLightManager;->setValue(Ljava/lang/String;II)I

    .line 19
    return-void
.end method

.method public static setDirection(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "port"
    .parameter "num"
    .parameter "inout"

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/cnlaunch/newgolo/manager/GoloLightManager;->native_gpio_setDirection(Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    return-void
.end method

.method public static setValue(Ljava/lang/String;II)I
    .locals 2
    .parameter "port"
    .parameter "num"
    .parameter "value"

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/cnlaunch/newgolo/manager/GoloLightManager;->native_gpio_setValue(Ljava/lang/String;II)I

    move-result v0

    .line 30
    .local v0, ret:I
    return v0
.end method
