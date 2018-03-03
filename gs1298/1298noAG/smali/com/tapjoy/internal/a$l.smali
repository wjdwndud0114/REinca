.class public abstract Lcom/tapjoy/internal/a$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "l"
.end annotation


# instance fields
.field d:Lcom/tapjoy/internal/a$d;

.field public e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/a$l;->g:Z

    return-void
.end method
