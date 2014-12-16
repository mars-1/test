.class public interface abstract Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;
.super Ljava/lang/Object;
.source "LaunchIMManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteDiagnoseHandleListener"
.end annotation


# static fields
.field public static final STATUS_CANCEL:I = 0x2

.field public static final STATUS_FINISH:I = 0x3

.field public static final STATUS_PROCESSING:I = 0x1

.field public static final STATUS_RESET:I = 0x4


# virtual methods
.method public abstract sendDiagnoseStatus(Ljava/lang/String;Ljava/lang/String;I)V
.end method
