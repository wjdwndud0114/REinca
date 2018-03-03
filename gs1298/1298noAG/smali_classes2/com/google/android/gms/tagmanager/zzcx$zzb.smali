.class Lcom/google/android/gms/tagmanager/zzcx$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzcx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private zzbFR:Lcom/google/android/gms/tagmanager/zzce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzce",
            "<",
            "Lcom/google/android/gms/internal/zzaj$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzbFS:Lcom/google/android/gms/internal/zzaj$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzce;Lcom/google/android/gms/internal/zzaj$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzce",
            "<",
            "Lcom/google/android/gms/internal/zzaj$zza;",
            ">;",
            "Lcom/google/android/gms/internal/zzaj$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcx$zzb;->zzbFR:Lcom/google/android/gms/tagmanager/zzce;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcx$zzb;->zzbFS:Lcom/google/android/gms/internal/zzaj$zza;

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcx$zzb;->zzbFR:Lcom/google/android/gms/tagmanager/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzce;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaj$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaj$zza;->zzacY()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcx$zzb;->zzbFS:Lcom/google/android/gms/internal/zzaj$zza;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcx$zzb;->zzbFS:Lcom/google/android/gms/internal/zzaj$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaj$zza;->zzacY()I

    move-result v0

    goto :goto_0
.end method

.method public zzPL()Lcom/google/android/gms/tagmanager/zzce;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tagmanager/zzce",
            "<",
            "Lcom/google/android/gms/internal/zzaj$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcx$zzb;->zzbFR:Lcom/google/android/gms/tagmanager/zzce;

    return-object v0
.end method

.method public zzPM()Lcom/google/android/gms/internal/zzaj$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcx$zzb;->zzbFS:Lcom/google/android/gms/internal/zzaj$zza;

    return-object v0
.end method
