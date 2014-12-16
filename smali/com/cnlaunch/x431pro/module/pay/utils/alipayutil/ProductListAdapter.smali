.class public Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/ProductListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProductListAdapter.java"


# instance fields
.field private m_productList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/ProductListAdapter;->m_productList:Ljava/util/ArrayList;

    .line 25
    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/ProductListAdapter;->m_productList:Ljava/util/ArrayList;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/ProductListAdapter;->m_productList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 58
    return-object p2
.end method
