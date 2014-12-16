.class public Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy$RecommendAsy;
.super Landroid/os/AsyncTask;
.source "PublicCircleAsy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecommendAsy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy$RecommendAsy;->this$0:Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy$RecommendAsy;->context:Landroid/content/Context;

    .line 146
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy$RecommendAsy;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .parameter "params"

    .prologue
    .line 155
    new-instance v0, Lcom/ifoer/expedition/ndk/DynamicDepot;

    invoke-direct {v0}, Lcom/ifoer/expedition/ndk/DynamicDepot;-><init>()V

    .line 156
    .local v0, jni:Lcom/ifoer/expedition/ndk/DynamicDepot;
    invoke-virtual {v0}, Lcom/ifoer/expedition/ndk/DynamicDepot;->DiagnoseMain()I

    .line 157
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy$RecommendAsy;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 163
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 151
    return-void
.end method
