.class Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;
.super Ljava/lang/Object;
.source "GlobalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HoldView"
.end annotation


# instance fields
.field mIcon:Landroid/widget/ImageView;

.field mName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;->this$0:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
