.class public Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIcon1:Landroid/graphics/Bitmap;

.field private mIcon2:Landroid/graphics/Bitmap;

.field private mIcon3:Landroid/graphics/Bitmap;

.field private mIcon4:Landroid/graphics/Bitmap;

.field private mInflater:Landroid/view/LayoutInflater;

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, it:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, pa:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    iput-object p2, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->items:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->paths:Ljava/util/List;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cnlaunch/golo3/message/R$drawable;->im_folder_back01:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->mIcon1:Landroid/graphics/Bitmap;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cnlaunch/golo3/message/R$drawable;->im_folder_back02:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->mIcon2:Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cnlaunch/golo3/message/R$drawable;->im_folder_folder:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->mIcon3:Landroid/graphics/Bitmap;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cnlaunch/golo3/message/R$drawable;->im_folder_doc:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->mIcon4:Landroid/graphics/Bitmap;

    .line 37
    iput-object p1, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->context:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 59
    if-nez p2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/cnlaunch/golo3/message/R$layout;->file_row:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v1, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;

    invoke-direct {v1, p0, v4}, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;-><init>(Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;)V

    .line 63
    .local v1, holder:Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;
    sget v2, Lcom/cnlaunch/golo3/message/R$id;->text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 64
    sget v2, Lcom/cnlaunch/golo3/message/R$id;->icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->paths:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, f:Ljava/io/File;
    iget-object v2, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "b1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    iget-object v2, v1, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->context:Landroid/content/Context;

    sget v4, Lcom/cnlaunch/golo3/message/R$string;->back_root:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, v1, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->mIcon1:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    :goto_1
    return-object p2

    .line 70
    .end local v0           #f:Ljava/io/File;
    .end local v1           #holder:Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;
    goto :goto_0

    .line 79
    .restart local v0       #f:Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "b2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, v1, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->context:Landroid/content/Context;

    sget v4, Lcom/cnlaunch/golo3/message/R$string;->back_upper:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, v1, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->mIcon2:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 86
    :cond_2
    iget-object v2, v1, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    iget-object v2, v1, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->mIcon3:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 93
    :cond_3
    iget-object v2, v1, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;->mIcon4:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
