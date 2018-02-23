.class public Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
.super Ljava/lang/Object;
.source "IgawCommerce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/commerce/IgawCommerce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IgawPaymentMethod"
.end annotation


# static fields
.field public static final BankTransfer:Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

.field public static final CreditCard:Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

.field public static final ETC:Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

.field public static final MobilePayment:Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;


# instance fields
.field private method:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 333
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    const-string v1, "CreditCard"

    invoke-direct {v0, v1}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->CreditCard:Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    .line 334
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    const-string v1, "BankTransfer"

    invoke-direct {v0, v1}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->BankTransfer:Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    .line 335
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    const-string v1, "MobilePayment"

    invoke-direct {v0, v1}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->MobilePayment:Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    .line 336
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    const-string v1, "ETC"

    invoke-direct {v0, v1}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->ETC:Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->method:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public static getMethodByMethodCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    .locals 1
    .param p0, "mehod"    # Ljava/lang/String;

    .prologue
    .line 357
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->CreditCard:Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->CreditCard:Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    .line 375
    :goto_0
    return-object v0

    .line 361
    :cond_0
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->BankTransfer:Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->BankTransfer:Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    goto :goto_0

    .line 365
    :cond_1
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->MobilePayment:Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->MobilePayment:Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    goto :goto_0

    .line 369
    :cond_2
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->ETC:Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->ETC:Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    goto :goto_0

    .line 375
    :cond_3
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    invoke-direct {v0, p0}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->method:Ljava/lang/String;

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->method:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->method:Ljava/lang/String;

    return-object v0
.end method
