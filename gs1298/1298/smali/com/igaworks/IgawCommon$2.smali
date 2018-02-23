.class final Lcom/igaworks/IgawCommon$2;
.super Ljava/lang/Object;
.source "IgawCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/IgawCommon;->setGender(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gender:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/igaworks/IgawCommon$2;->val$gender:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v0

    iget v1, p0, Lcom/igaworks/IgawCommon$2;->val$gender:I

    invoke-interface {v0, v1}, Lcom/igaworks/interfaces/CommonInterface;->setGender(I)V

    .line 115
    return-void
.end method
