.class Lcom/google/android/gms/tagmanager/zzas;
.super Ljava/lang/Object;


# instance fields
.field private final zzafh:J

.field private final zzbEk:J

.field private final zzbEl:J

.field private zzbEm:Ljava/lang/String;


# direct methods
.method constructor <init>(JJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzas;->zzbEk:J

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzas;->zzafh:J

    iput-wide p5, p0, Lcom/google/android/gms/tagmanager/zzas;->zzbEl:J

    return-void
.end method


# virtual methods
.method zzPi()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzas;->zzbEk:J

    return-wide v0
.end method

.method zzPj()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzas;->zzbEl:J

    return-wide v0
.end method

.method zzPk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzas;->zzbEm:Ljava/lang/String;

    return-object v0
.end method

.method zzhl(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzas;->zzbEm:Ljava/lang/String;

    goto :goto_0
.end method
