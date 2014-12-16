.class Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;->this$0:Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;-><init>(Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;)V

    return-void
.end method
