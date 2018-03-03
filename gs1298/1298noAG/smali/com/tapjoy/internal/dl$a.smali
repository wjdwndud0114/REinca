.class public abstract Lcom/tapjoy/internal/dl$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field a:Lcom/tapjoy/internal/hr;

.field b:Lcom/tapjoy/internal/dp;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method


# virtual methods
.method public final a(ILcom/tapjoy/internal/dk;Ljava/lang/Object;)Lcom/tapjoy/internal/dl$a;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tapjoy/internal/dl$a;->b:Lcom/tapjoy/internal/dp;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/tapjoy/internal/hr;

    invoke-direct {v0}, Lcom/tapjoy/internal/hr;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/hr;

    .line 130
    new-instance v0, Lcom/tapjoy/internal/dp;

    iget-object v1, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/hr;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/dp;-><init>(Lcom/tapjoy/internal/hs;)V

    iput-object v0, p0, Lcom/tapjoy/internal/dl$a;->b:Lcom/tapjoy/internal/dp;

    .line 133
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/tapjoy/internal/dk;->a()Lcom/tapjoy/internal/dn;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/tapjoy/internal/dl$a;->b:Lcom/tapjoy/internal/dp;

    invoke-virtual {v0, v1, p1, p3}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    return-object p0

    .line 136
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final a(Lcom/tapjoy/internal/hu;)Lcom/tapjoy/internal/dl$a;
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/tapjoy/internal/hu;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/tapjoy/internal/dl$a;->b:Lcom/tapjoy/internal/dp;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/tapjoy/internal/hr;

    invoke-direct {v0}, Lcom/tapjoy/internal/hr;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/hr;

    .line 116
    new-instance v0, Lcom/tapjoy/internal/dp;

    iget-object v1, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/hr;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/dp;-><init>(Lcom/tapjoy/internal/hs;)V

    iput-object v0, p0, Lcom/tapjoy/internal/dl$a;->b:Lcom/tapjoy/internal/dp;

    .line 119
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/dl$a;->b:Lcom/tapjoy/internal/dp;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dp;->a(Lcom/tapjoy/internal/hu;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_1
    return-object p0

    .line 121
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final a()Lcom/tapjoy/internal/hu;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/hr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/hr;

    .line 153
    invoke-virtual {v0}, Lcom/tapjoy/internal/hr;->h()Lcom/tapjoy/internal/hr;

    move-result-object v1

    .line 1525
    new-instance v0, Lcom/tapjoy/internal/hu;

    invoke-virtual {v1}, Lcom/tapjoy/internal/hr;->g()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/hu;-><init>([B)V

    .line 153
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tapjoy/internal/hu;->b:Lcom/tapjoy/internal/hu;

    goto :goto_0
.end method
