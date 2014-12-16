.class Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$4;
.super Ljava/lang/Object;
.source "SetMaxMinValue.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$4;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$4;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    const/4 v1, 0x1

    #setter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->bCanDismiss:Z
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$14(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;Z)V

    .line 172
    return-void
.end method
