.class public Lcom/google/android/gms/internal/zzob;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzob$zza;
    }
.end annotation


# instance fields
.field public final errorCode:I

.field public final zzJJ:Ljava/lang/String;

.field public final zzKF:J

.field public final zzUV:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzob$zza;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzob$zza;->zza(Lcom/google/android/gms/internal/zzob$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzob;->zzUV:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzob$zza;->zzb(Lcom/google/android/gms/internal/zzob$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzob;->zzJJ:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzob$zza;->zzc(Lcom/google/android/gms/internal/zzob$zza;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzob;->errorCode:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzob$zza;->zzd(Lcom/google/android/gms/internal/zzob$zza;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzob;->zzKF:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzob$zza;Lcom/google/android/gms/internal/zzob$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzob;-><init>(Lcom/google/android/gms/internal/zzob$zza;)V

    return-void
.end method
