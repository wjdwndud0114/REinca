.class final Lcom/igaworks/IgawCommon$1;
.super Ljava/lang/Object;
.source "IgawCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/IgawCommon;->setAge(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$age:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/igaworks/IgawCommon$1;->val$age:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v0

    iget v1, p0, Lcom/igaworks/IgawCommon$1;->val$age:I

    invoke-interface {v0, v1}, Lcom/igaworks/interfaces/CommonInterface;->setAge(I)V

    .line 102
    return-void
.end method
