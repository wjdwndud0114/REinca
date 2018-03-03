.class final enum Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;
.super Ljava/lang/Enum;
.source "CommerceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/commerce/impl/CommerceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ApiCommerce"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

.field public static final enum ENUM_ADD_TO_CART:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

.field public static final enum ENUM_ADD_TO_WISHLIST:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

.field public static final enum ENUM_APP_OPEN:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

.field public static final enum ENUM_CATEGORY_VIEW:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

.field public static final enum ENUM_DEEPLINK_OPEN:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

.field public static final enum ENUM_LOGIN:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

.field public static final enum ENUM_PAYMENT_VIEW:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

.field public static final enum ENUM_PRDUCT_VIEW:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

.field public static final enum ENUM_REFUND:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

.field public static final enum ENUM_REVIEW_ORDER:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

.field public static final enum ENUM_SERACH:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

.field public static final enum ENUM_SHARE:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    new-instance v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    const-string v1, "ENUM_APP_OPEN"

    invoke-direct {v0, v1, v3}, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_APP_OPEN:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    .line 83
    new-instance v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    const-string v1, "ENUM_DEEPLINK_OPEN"

    invoke-direct {v0, v1, v4}, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_DEEPLINK_OPEN:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    .line 84
    new-instance v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    const-string v1, "ENUM_LOGIN"

    invoke-direct {v0, v1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_LOGIN:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    .line 85
    new-instance v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    const-string v1, "ENUM_REFUND"

    invoke-direct {v0, v1, v6}, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_REFUND:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    .line 86
    new-instance v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    const-string v1, "ENUM_ADD_TO_CART"

    invoke-direct {v0, v1, v7}, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_ADD_TO_CART:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    .line 87
    new-instance v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    const-string v1, "ENUM_ADD_TO_WISHLIST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_ADD_TO_WISHLIST:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    .line 88
    new-instance v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    const-string v1, "ENUM_PRDUCT_VIEW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_PRDUCT_VIEW:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    .line 89
    new-instance v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    const-string v1, "ENUM_CATEGORY_VIEW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_CATEGORY_VIEW:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    .line 90
    new-instance v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    const-string v1, "ENUM_REVIEW_ORDER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_REVIEW_ORDER:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    .line 91
    new-instance v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    const-string v1, "ENUM_PAYMENT_VIEW"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_PAYMENT_VIEW:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    .line 92
    new-instance v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    const-string v1, "ENUM_SERACH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_SERACH:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    .line 93
    new-instance v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    const-string v1, "ENUM_SHARE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_SHARE:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    .line 80
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    sget-object v1, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_APP_OPEN:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    aput-object v1, v0, v3

    sget-object v1, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_DEEPLINK_OPEN:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    aput-object v1, v0, v4

    sget-object v1, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_LOGIN:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    aput-object v1, v0, v5

    sget-object v1, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_REFUND:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    aput-object v1, v0, v6

    sget-object v1, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_ADD_TO_CART:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_ADD_TO_WISHLIST:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_PRDUCT_VIEW:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_CATEGORY_VIEW:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_REVIEW_ORDER:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_PAYMENT_VIEW:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_SERACH:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->ENUM_SHARE:Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    aput-object v2, v0, v1

    sput-object v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->$VALUES:[Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    return-object v0
.end method

.method public static values()[Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->$VALUES:[Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    invoke-virtual {v0}, [Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;

    return-object v0
.end method
