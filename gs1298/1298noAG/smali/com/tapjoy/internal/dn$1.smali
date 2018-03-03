.class final Lcom/tapjoy/internal/dn$1;
.super Lcom/tapjoy/internal/dn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/dn;-><init>(Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 204
    .line 1214
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->d()I

    move-result v0

    .line 1215
    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1216
    :goto_0
    return-object v0

    :cond_0
    if-ne v0, v3, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1217
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid boolean value 0x%02x"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/dp;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 204
    check-cast p2, Ljava/lang/Boolean;

    .line 2210
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dp;->c(I)V

    .line 204
    return-void

    .line 2210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
