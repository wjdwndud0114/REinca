.class final Lcom/tapjoy/internal/gx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    .line 1171
    new-instance v0, Lcom/tapjoy/internal/gx;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/gx;-><init>(Lcom/tapjoy/internal/bs;)V

    .line 168
    return-object v0
.end method
