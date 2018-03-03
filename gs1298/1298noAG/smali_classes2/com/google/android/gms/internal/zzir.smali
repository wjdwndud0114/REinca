.class Lcom/google/android/gms/internal/zzir;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzir$zza;
    }
.end annotation


# instance fields
.field zzIt:Lcom/google/android/gms/internal/zzer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzIu:Lcom/google/android/gms/internal/zzkz;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzIv:Lcom/google/android/gms/internal/zzgj;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzIw:Lcom/google/android/gms/internal/zzek;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzIx:Lcom/google/android/gms/internal/zznt;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzti:Lcom/google/android/gms/internal/zzel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method zzc(Lcom/google/android/gms/ads/internal/zzl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzti:Lcom/google/android/gms/internal/zzel;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzir$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzir;->zzti:Lcom/google/android/gms/internal/zzel;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzir$zza;-><init>(Lcom/google/android/gms/internal/zzel;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzel;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzIt:Lcom/google/android/gms/internal/zzer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzIt:Lcom/google/android/gms/internal/zzer;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzer;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzIu:Lcom/google/android/gms/internal/zzkz;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzIu:Lcom/google/android/gms/internal/zzkz;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzkz;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzIv:Lcom/google/android/gms/internal/zzgj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzIv:Lcom/google/android/gms/internal/zzgj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzgj;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzIw:Lcom/google/android/gms/internal/zzek;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzIw:Lcom/google/android/gms/internal/zzek;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzek;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzIx:Lcom/google/android/gms/internal/zznt;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzIx:Lcom/google/android/gms/internal/zznt;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zznt;)V

    :cond_5
    return-void
.end method
