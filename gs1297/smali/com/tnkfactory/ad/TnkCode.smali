.class public final Lcom/tnkfactory/ad/TnkCode;
.super Ljava/lang/Object;


# static fields
.field public static final FEMALE:Lcom/tnkfactory/ad/TnkCode;

.field public static final MALE:Lcom/tnkfactory/ad/TnkCode;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tnkfactory/ad/TnkCode;

    const-string v1, "M"

    invoke-direct {v0, v1}, Lcom/tnkfactory/ad/TnkCode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tnkfactory/ad/TnkCode;->MALE:Lcom/tnkfactory/ad/TnkCode;

    new-instance v0, Lcom/tnkfactory/ad/TnkCode;

    const-string v1, "F"

    invoke-direct {v0, v1}, Lcom/tnkfactory/ad/TnkCode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tnkfactory/ad/TnkCode;->FEMALE:Lcom/tnkfactory/ad/TnkCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkCode;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/tnkfactory/ad/TnkCode;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkCode;->a:Ljava/lang/String;

    return-object v0
.end method
