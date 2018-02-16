.class public final Lcom/google/android/gms/internal/zznb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# instance fields
.field private zzOn:Ljava/lang/String;

.field private zzTh:Ljava/lang/String;

.field private zzTi:Lcom/google/android/gms/internal/zzqc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqc",
            "<",
            "Lcom/google/android/gms/internal/zzne;",
            ">;"
        }
    .end annotation
.end field

.field zzTj:Lcom/google/android/gms/internal/zzja$zzc;

.field public final zzTk:Lcom/google/android/gms/internal/zzhx;

.field public final zzTl:Lcom/google/android/gms/internal/zzhx;

.field public final zzTm:Lcom/google/android/gms/internal/zzhx;

.field private final zzrN:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zznb;->zzrN:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzqc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zznb;->zzTi:Lcom/google/android/gms/internal/zzqc;

    new-instance v0, Lcom/google/android/gms/internal/zznb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zznb$1;-><init>(Lcom/google/android/gms/internal/zznb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zznb;->zzTk:Lcom/google/android/gms/internal/zzhx;

    new-instance v0, Lcom/google/android/gms/internal/zznb$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zznb$2;-><init>(Lcom/google/android/gms/internal/zznb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zznb;->zzTl:Lcom/google/android/gms/internal/zzhx;

    new-instance v0, Lcom/google/android/gms/internal/zznb$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zznb$3;-><init>(Lcom/google/android/gms/internal/zznb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zznb;->zzTm:Lcom/google/android/gms/internal/zzhx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zznb;->zzTh:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zznb;->zzOn:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zznb;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznb;->zzrN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zzqc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznb;->zzTi:Lcom/google/android/gms/internal/zzqc;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zznb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznb;->zzOn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zznb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznb;->zzTh:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzja$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznb;->zzTj:Lcom/google/android/gms/internal/zzja$zzc;

    return-void
.end method

.method public zzjg()Lcom/google/android/gms/internal/zzja$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznb;->zzTj:Lcom/google/android/gms/internal/zzja$zzc;

    return-object v0
.end method

.method public zzjh()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzne;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zznb;->zzTi:Lcom/google/android/gms/internal/zzqc;

    return-object v0
.end method
