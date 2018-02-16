.class abstract Lcom/tnkfactory/ad/cy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:I


# instance fields
.field private b:I

.field public c:Lcom/tnkfactory/ad/TnkAdListener;

.field public d:Z

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tnkfactory/ad/cy;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tnkfactory/ad/cy;->b:I

    iput-object v1, p0, Lcom/tnkfactory/ad/cy;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/tnkfactory/ad/cy;->c:Lcom/tnkfactory/ad/TnkAdListener;

    iput-boolean v0, p0, Lcom/tnkfactory/ad/cy;->d:Z

    sget v0, Lcom/tnkfactory/ad/cy;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tnkfactory/ad/cy;->a:I

    iput v0, p0, Lcom/tnkfactory/ad/cy;->b:I

    iput-object p1, p0, Lcom/tnkfactory/ad/cy;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/cy;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/cy;->e:Ljava/lang/String;

    return-object v0
.end method
