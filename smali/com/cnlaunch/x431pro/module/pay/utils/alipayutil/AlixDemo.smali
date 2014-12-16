.class public Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;
.super Landroid/app/Activity;
.source "AlixDemo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo$AlixOnCancelListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mProgress:Landroid/app/ProgressDialog;

.field private m_listViewAdapter:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/ProductListAdapter;

.field private mproductListView:Landroid/widget/ListView;

.field private mproductlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;",
            ">;"
        }
    .end annotation
.end field

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const-class v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->tag:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mproductListView:Landroid/widget/ListView;

    .line 44
    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->m_listViewAdapter:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/ProductListAdapter;

    .line 46
    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mProgress:Landroid/app/ProgressDialog;

    .line 167
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo$1;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->closeProgress()V

    return-void
.end method

.method private closeProgress()V
    .locals 2

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 217
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mProgress:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string/jumbo v0, "charset=\"utf-8\""

    .line 150
    .local v0, charset:Ljava/lang/String;
    return-object v0
.end method

.method private getOrderInfo(I)Ljava/lang/String;
    .locals 5
    .parameter "position"

    .prologue
    .line 82
    const-string/jumbo v0, "partner=\"2088701486169280\""

    .line 83
    .local v0, strOrderInfo:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "seller=\"2088701486169280\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "out_trade_no=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->getOutTradeNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "subject=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "body=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "total_fee=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 94
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    const-string/jumbo v3, "\u4e00\u53e3\u4ef7:"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "notify_url=\"http://notify.java.jpxx.org/index.jsp\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    return-object v0
.end method

.method private getOutTradeNo()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "MMddHHmmss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, format:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 111
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, strKey:Ljava/lang/String;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 114
    .local v2, r:Ljava/util/Random;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 116
    return-object v3
.end method

.method private getSignType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string/jumbo v0, "sign_type=\"RSA\""

    .line 139
    .local v0, getSignType:Ljava/lang/String;
    return-object v0
.end method

.method private initProductList()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;-><init>()V

    .line 66
    .local v0, products:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->retrieveProductInfo()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mproductlist:Ljava/util/ArrayList;

    .line 68
    const v1, 0x7f0d0425

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mproductListView:Landroid/widget/ListView;

    .line 69
    new-instance v1, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/ProductListAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mproductlist:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/ProductListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->m_listViewAdapter:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/ProductListAdapter;

    .line 70
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mproductListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->m_listViewAdapter:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/ProductListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mproductListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mproductListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 73
    return-void
.end method

.method private sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "signType"
    .parameter "content"

    .prologue
    .line 128
    const-string/jumbo v0, "lDgBoQzIhqly%2BwP3mxt8uYdEwcClej9AEmB2uPdkdeTDReH81EbyhN97jw8g3qBXL4sRBJ2BHEexwzneonPyBFvG9mfu1BweLh0Ixylbd8emK%2B3uubuv%2BF3euiPRmEVDbZy%2Be1qJtxdPJnqOMkJ0qPy%2F4wmjgRXEy8HznpN0Uss%3D"

    invoke-static {p2, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Rsa;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, mspHelper:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->detectMobile_sp()Z

    .line 55
    const v1, 0x7f030175

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->setContentView(I)V

    .line 58
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->initProductList()V

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 228
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->finish()V

    .line 230
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
