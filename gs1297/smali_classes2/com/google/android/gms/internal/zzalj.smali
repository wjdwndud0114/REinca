.class public Lcom/google/android/gms/internal/zzalj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzalj$zze;,
        Lcom/google/android/gms/internal/zzalj$zzf;,
        Lcom/google/android/gms/internal/zzalj$zzc;,
        Lcom/google/android/gms/internal/zzalj$zzd;,
        Lcom/google/android/gms/internal/zzalj$zzb;,
        Lcom/google/android/gms/internal/zzalj$zza;
    }
.end annotation


# static fields
.field public static final zzaOs:Lcom/google/android/gms/internal/zzalj$zza;

.field public static final zzaOt:Lcom/google/android/gms/internal/zzalj$zzb;

.field public static final zzaOu:Lcom/google/android/gms/internal/zzalj$zzd;

.field public static final zzaOv:Lcom/google/android/gms/internal/zzalj$zzc;

.field public static final zzaOw:Lcom/google/android/gms/internal/zzalj$zzf;

.field public static final zzaOx:Lcom/google/android/gms/internal/zzalj$zze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/internal/zzalj$zza;

    const-string v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzalj$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzalj;->zzaOs:Lcom/google/android/gms/internal/zzalj$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzalj$zzb;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzalj$zzb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzalj;->zzaOt:Lcom/google/android/gms/internal/zzalj$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzalj$zzd;

    const-string v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzalj$zzd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzalj;->zzaOu:Lcom/google/android/gms/internal/zzalj$zzd;

    new-instance v0, Lcom/google/android/gms/internal/zzalj$zzc;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzalj$zzc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzalj;->zzaOv:Lcom/google/android/gms/internal/zzalj$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzalj$zzf;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzalj$zzf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzalj;->zzaOw:Lcom/google/android/gms/internal/zzalj$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzalj$zze;

    const-string v1, "recency"

    const v2, 0x7a1200

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzalj$zze;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzalj;->zzaOx:Lcom/google/android/gms/internal/zzalj$zze;

    return-void
.end method
