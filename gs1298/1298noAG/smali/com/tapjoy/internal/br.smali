.class public final Lcom/tapjoy/internal/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bq;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/tapjoy/internal/br;->a:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tapjoy/internal/br;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 23
    if-ne p0, p1, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 30
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 26
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/tapjoy/internal/br;

    if-eqz v0, :cond_1

    .line 27
    check-cast p1, Lcom/tapjoy/internal/br;

    .line 28
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/tapjoy/internal/br;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/tapjoy/internal/br;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 30
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tapjoy/internal/br;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tapjoy/internal/br;->a:Ljava/lang/String;

    return-object v0
.end method
