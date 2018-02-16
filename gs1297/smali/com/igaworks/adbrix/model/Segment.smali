.class public Lcom/igaworks/adbrix/model/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private op:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    .local p0, "this":Lcom/igaworks/adbrix/model/Segment;, "Lcom/igaworks/adbrix/model/Segment<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/igaworks/adbrix/model/Segment;, "Lcom/igaworks/adbrix/model/Segment<TT;>;"
    .local p4, "val":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Segment;->scheme:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/igaworks/adbrix/model/Segment;->key:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/igaworks/adbrix/model/Segment;->op:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/igaworks/adbrix/model/Segment;->val:Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/igaworks/adbrix/model/Segment;, "Lcom/igaworks/adbrix/model/Segment<TT;>;"
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Segment;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/igaworks/adbrix/model/Segment;, "Lcom/igaworks/adbrix/model/Segment<TT;>;"
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Segment;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lcom/igaworks/adbrix/model/Segment;, "Lcom/igaworks/adbrix/model/Segment<TT;>;"
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Segment;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getVal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/igaworks/adbrix/model/Segment;, "Lcom/igaworks/adbrix/model/Segment<TT;>;"
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Segment;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 33
    .local p0, "this":Lcom/igaworks/adbrix/model/Segment;, "Lcom/igaworks/adbrix/model/Segment<TT;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Segment;->key:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 41
    .local p0, "this":Lcom/igaworks/adbrix/model/Segment;, "Lcom/igaworks/adbrix/model/Segment<TT;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Segment;->op:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 25
    .local p0, "this":Lcom/igaworks/adbrix/model/Segment;, "Lcom/igaworks/adbrix/model/Segment<TT;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Segment;->scheme:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setVal(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/igaworks/adbrix/model/Segment;, "Lcom/igaworks/adbrix/model/Segment<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Segment;->val:Ljava/lang/Object;

    .line 50
    return-void
.end method
