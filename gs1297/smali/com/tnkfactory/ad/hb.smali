.class Lcom/tnkfactory/ad/hb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/hc;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ha;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/ha;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/hb;->a:Lcom/tnkfactory/ad/ha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
