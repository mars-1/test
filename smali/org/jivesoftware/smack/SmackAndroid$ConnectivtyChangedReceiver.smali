.class Lorg/jivesoftware/smack/SmackAndroid$ConnectivtyChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmackAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/SmackAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectivtyChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/SmackAndroid;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/SmackAndroid;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lorg/jivesoftware/smack/SmackAndroid$ConnectivtyChangedReceiver;->this$0:Lorg/jivesoftware/smack/SmackAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 52
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->refresh()V

    .line 53
    return-void
.end method
