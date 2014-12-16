.class Lcom/cnlaunch/golo3/ui/business/MyReport2Activity$1;
.super Ljava/lang/Object;
.source "MyReport2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity$1;->this$0:Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity$1;->this$0:Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;

    invoke-virtual {v0}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->finish()V

    .line 55
    return-void
.end method
