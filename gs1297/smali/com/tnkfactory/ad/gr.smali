.class public Lcom/tnkfactory/ad/gr;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/tnkfactory/ad/gr;->b:Z

    iput-object v2, p0, Lcom/tnkfactory/ad/gr;->c:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/tnkfactory/ad/gr;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tnkfactory/ad/gr;->b:Z

    iput-object v2, p0, Lcom/tnkfactory/ad/gr;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/gr;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/gr;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/tnkfactory/ad/gr;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/tnkfactory/ad/gr;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/gr;->c:Ljava/util/List;

    return-void
.end method
