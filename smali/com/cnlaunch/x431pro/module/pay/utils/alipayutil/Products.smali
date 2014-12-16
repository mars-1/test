.class public final Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;
.super Ljava/lang/Object;
.source "Products.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    }
.end annotation


# instance fields
.field mproductlist:Ljava/util/ArrayList;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public retrieveProductInfo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x1e

    .line 27
    const/4 v0, 0x0

    .line 31
    .local v0, productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 32
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "123456"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 33
    const-string/jumbo v1, "2010\u65b0\u6b3eNIKE \u8010\u514b902\u7b2c\u4e09\u4ee3\u677f\u978b \u8010\u514b\u7537\u5973\u978b 386201 \u767d\u7ea2"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 34
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 35
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 36
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 41
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u9b45\u529b\u9999\u6c34"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 42
    const-string/jumbo v1, "\u65b0\u5e74\u7279\u60e0 adidas \u963f\u8fea\u8fbe\u65af\u8d70\u73e0 \u9999\u4f53\u6b62\u6c57\u8d70\u73e0 \u591a\u79cd\u9999\u578b\u53ef\u9009"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 44
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 45
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 50
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u73cd\u73e0\u9879\u94fe"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 51
    const-string/jumbo v1, "\u30102\u5143\u5305\u90ae\u3011\u97e9\u7248 \u97e9\u56fd \u6d41\u884c\u9970\u54c1\u592a\u9633\u82b1\u5c0f\u5de7\u96cf\u83ca \u73cd\u73e0\u9879\u94fe2M15"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 52
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 53
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 54
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 59
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u4e09\u661f \u539f\u88c5\u79fb\u52a8\u786c\u76d8"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "\u4e09\u661f \u539f\u88c5\u79fb\u52a8\u786c\u76d8 S2 320G \u5e26\u52a0\u5bc6 \u4e09\u661fS2 \u97e9\u56fd\u539f\u88c5 \u5168\u56fd\u8054\u4fdd"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 62
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 63
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 68
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u53d1\u7b8d\u53d1\u5e26"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 69
    const-string/jumbo v1, "\u3010\u8089\u6765\u6765\u3011\u8d85\u70ed\u5356 \u767e\u53d8\u5c0f\u9886\u5dfe \u5154\u8033\u6735\u5e03\u827a\u53d1\u7b8d\u53d1\u5e26"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 70
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 71
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 72
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 77
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u53f0\u7248N97I"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 78
    const-string/jumbo v1, "\u53f0\u7248N97I \u6709\u8ff7\u4f60\u7248 \u53cc\u5361\u53cc\u5f85\u624b\u673a \u6302QQ JAVA \u7092\u80a1 \u6765\u7535\u5f52\u5c5e\u5730 \u540c\u6b3e\u6bd4\u4ef7 "

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 79
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 80
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 81
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 86
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u82f9\u679c\u624b\u673a"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 87
    const-string/jumbo v1, "\u5c71\u5be8\u56fd\u4ea7\u7ea2\u82f9\u679c\u624b\u673a Hiphone I9 JAVA QQ\u540e\u53f0 \u98de\u4fe1 \u7092\u80a1 UC"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 88
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 89
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 90
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 95
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u8774\u8776\u7ed3"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 96
    const-string/jumbo v1, "\u3010\u9970\u54c1\u5b9e\u7269\u62cd\u6444\u3011\u6ee130\u5305\u90ae \u4e09\u5c42\u7ef8\u7f0e\u7c89\u8272 \u8774\u8776\u7ed3\u516c\u4e3b\u53d1\u7b8d\u591a\u8272\u5165"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 97
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 98
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 99
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 104
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u97e9\u7248\u96ea\u7eba"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 105
    const-string/jumbo v1, "\u9970\u54c1\u6279\u53d1\u4ef7 \u97e9\u7248\u96ea\u7eba\u7eb1\u5706\u70b9\u5e03\u82b1\u6735 \u5c71\u8336\u73ab\u7470\u82b1 \u53d1\u5708\u80f8\u9488\u4e24\u7528 6002"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 106
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 107
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 108
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 113
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u4e94\u7687\u7eb8\u7bb1"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 114
    const-string/jumbo v1, "\u52a0\u56fa\u7eb8\u7bb1 \u4f1a\u5458\u5305\u5feb\u9012\u62cd\u597d\u53bb\u8fd0\u8d39\u51b2\u7eb8\u7bb1\u9996\u4e2a\u4e94\u7687"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 115
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 116
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 117
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 122
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "MF\u5531\u7247"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 123
    const-string/jumbo v1, "\u3010\u6b63\u7248\u3011MF\u5531\u7247 HIFI\u6bd2\u836f4 \u6bd2\u836f\u6d85\u78d0\u518d\u9020 \u6d77\u6d1b \u56e0\u65b04\u53f7HD\u5929\u789f1CD"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 124
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 125
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 126
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 131
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u5b66\u4e60\u673a"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 132
    const-string/jumbo v1, "\u516d\u4eba\u884c\u8001\u53cb\u8bb0friends\u516810\u5b63\u82f1\u8bed\u5b66\u4e60\u673a\u7248 MP3\u7248\u5b50\u7cbe\u8bfb\u7b14\u8bb0"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 133
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 134
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 135
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 140
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u8054\u534e\u5361"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 141
    const-string/jumbo v1, "\u8054\u534eOK\u5361\uff0c\u7279\u4ef7\u4f9b\u5e94\u8054\u534e\u5361\uff0c\u8054\u534eOK\u5361\uff0c\u79ef\u70b9\u5361982\u6298 \u5361\u5bc6\u6216\u4ee3\u5145"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 142
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 143
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 144
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 149
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u7cbd\u5b50\u6279\u53d1"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 150
    const-string/jumbo v1, "\u5609\u5174\u7cbd\u5b50\u6279\u53d1\u56e2\u8d2d\u771f\u771f\u8001\u8001\u4e4b\u5927\u8089\u7cbd"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 151
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 152
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 153
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 159
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u8bdd\u8d39\u5145\u503c"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 160
    const-string/jumbo v1, "\u3010\u56db\u94bb\u4fe1\u8a89\u3011\u5317\u4eac\u79fb\u52a830\u5143 \u7535\u8111\u5168\u81ea\u52a8\u5145\u503c 1\u523010\u5206\u949f\u5185\u5230\u8d26"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 161
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 162
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 163
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 168
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u77ed\u8896T\u6064"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 169
    const-string/jumbo v1, "\u7231\u9a6c\u4ed5\u7537\u88c5\u77ed\u8896T\u60642010\u65b0\u6b3e\u65f6\u5c1a\u590f\u88c5\u97e9\u7248\u7537\u58ebT\u6064\u6b63\u54c1\u539f\u5355\u5706\u9886\u4fee\u8eab"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 170
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 171
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 172
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 177
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u7530\u56ed\u6c99\u53d1"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 178
    const-string/jumbo v1, "\u73af\u4fdd \u97e9\u5f0f\u7530\u56ed\u6c99\u53d1/\u5e03\u827a\u6c99\u53d1/\u73b0\u4ee3\u6c99\u53d1/\u7279\u4ef7\u7530\u56ed\u6c99\u53d1<\u53ef\u5b9a\u505a>"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 179
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 180
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 181
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 186
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u590f\u5b63\u767b\u5c71\u978b"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 187
    const-string/jumbo v1, "8071\u7537\u5973\u58eb\u4e13\u67dc\u6b63\u54c1\u590f\u5b63\u6237\u5916\u9632\u6ed1\u978b\u6237\u5916\u978b\u767b\u5c71\u978b\u5f92\u6b65\u978b\u9632\u6c34\u900f\u6c14\u7070"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 188
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 189
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 190
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 195
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "\u7cbe\u54c1\u5a03\u5a03"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 196
    const-string/jumbo v1, "\u5b9c\u5bb6\u5b9c\u7cbe\u54c1\u5a03\u5a03\uff0c\u8d85\u67d4\u77ed\u6bdb\u7ed2\u6d77\u8c5a\u62b1\u6795 75\u5398\u7c73 \u5168\u56fd\u5305\u90ae"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 197
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 198
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 199
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;

    .end local v0           #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;)V

    .line 204
    .restart local v0       #productDetail:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;
    const-string/jumbo v1, "HTC G5 \u8c37\u6b4cG5"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->subject:Ljava/lang/String;

    .line 205
    const-string/jumbo v1, "HTC G5 \u8c37\u6b4cG5 Google G5 \u5148\u9a8c\u8d27\u540e\u4ed8\u6b3e \u652f\u7968\u5237\u5361 \u6613\u4eba\u5728\u7ebf"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->body:Ljava/lang/String;

    .line 206
    const-string/jumbo v1, "\u4e00\u53e3\u4ef7:0.01"

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->price:Ljava/lang/String;

    .line 207
    iput v2, v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products$ProductDetail;->resId:I

    .line 208
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Products;->mproductlist:Ljava/util/ArrayList;

    return-object v1
.end method
