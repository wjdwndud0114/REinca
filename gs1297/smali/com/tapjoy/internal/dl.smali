.class public abstract Lcom/tapjoy/internal/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/dl$a;
    }
.end annotation


# instance fields
.field transient a:I

.field protected transient b:I

.field private final transient c:Lcom/tapjoy/internal/dn;

.field private final transient d:Lcom/tapjoy/internal/hu;


# direct methods
.method protected constructor <init>(Lcom/tapjoy/internal/dn;Lcom/tapjoy/internal/hu;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lcom/tapjoy/internal/dl;->a:I

    .line 40
    iput v0, p0, Lcom/tapjoy/internal/dl;->b:I

    .line 43
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "adapter == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unknownFields == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iput-object p1, p0, Lcom/tapjoy/internal/dl;->c:Lcom/tapjoy/internal/dn;

    .line 46
    iput-object p2, p0, Lcom/tapjoy/internal/dl;->d:Lcom/tapjoy/internal/hu;

    .line 47
    return-void
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/hu;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tapjoy/internal/dl;->d:Lcom/tapjoy/internal/hu;

    .line 55
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tapjoy/internal/hu;->b:Lcom/tapjoy/internal/hu;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/tapjoy/internal/dn;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
