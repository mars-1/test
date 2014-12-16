.class public Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
.super Ljava/lang/Object;
.source "Products.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProductDetail"
.end annotation


# instance fields
.field body:Ljava/lang/String;

.field price:Ljava/lang/String;

.field resId:I

.field subject:Ljava/lang/String;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
