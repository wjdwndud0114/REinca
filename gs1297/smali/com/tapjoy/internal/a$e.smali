.class public final Lcom/tapjoy/internal/a$e;
.super Lcom/tapjoy/internal/a$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/tapjoy/internal/a$l;-><init>()V

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/a$e;->a:Ljava/util/ArrayList;

    .line 803
    return-void
.end method
