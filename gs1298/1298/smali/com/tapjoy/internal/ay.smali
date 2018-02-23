.class public abstract Lcom/tapjoy/internal/ay;
.super Ljava/util/AbstractQueue;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/tapjoy/internal/ay$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ay$1;-><init>(Lcom/tapjoy/internal/ay;)V

    return-object v0
.end method
