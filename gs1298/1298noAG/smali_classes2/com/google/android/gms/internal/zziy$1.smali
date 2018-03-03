.class Lcom/google/android/gms/internal/zziy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziy;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqa;Ljava/lang/String;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/zzd;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzIQ:Lcom/google/android/gms/internal/zzqa;

.field final synthetic zzIR:Lcom/google/android/gms/internal/zziy$zza;

.field final synthetic zzIS:Lcom/google/android/gms/internal/zzav;

.field final synthetic zzIT:Lcom/google/android/gms/ads/internal/zzd;

.field final synthetic zzIU:Ljava/lang/String;

.field final synthetic zzIV:Lcom/google/android/gms/internal/zziy;

.field final synthetic zztd:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziy;Landroid/content/Context;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zziy$zza;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/zzd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zziy$1;->zzIV:Lcom/google/android/gms/internal/zziy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zziy$1;->zztd:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zziy$1;->zzIQ:Lcom/google/android/gms/internal/zzqa;

    iput-object p4, p0, Lcom/google/android/gms/internal/zziy$1;->zzIR:Lcom/google/android/gms/internal/zziy$zza;

    iput-object p5, p0, Lcom/google/android/gms/internal/zziy$1;->zzIS:Lcom/google/android/gms/internal/zzav;

    iput-object p6, p0, Lcom/google/android/gms/internal/zziy$1;->zzIT:Lcom/google/android/gms/ads/internal/zzd;

    iput-object p7, p0, Lcom/google/android/gms/internal/zziy$1;->zzIU:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy$1;->zzIV:Lcom/google/android/gms/internal/zziy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziy$1;->zztd:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zziy$1;->zzIQ:Lcom/google/android/gms/internal/zzqa;

    iget-object v3, p0, Lcom/google/android/gms/internal/zziy$1;->zzIR:Lcom/google/android/gms/internal/zziy$zza;

    iget-object v4, p0, Lcom/google/android/gms/internal/zziy$1;->zzIS:Lcom/google/android/gms/internal/zzav;

    iget-object v5, p0, Lcom/google/android/gms/internal/zziy$1;->zzIT:Lcom/google/android/gms/ads/internal/zzd;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zziy;->zza(Lcom/google/android/gms/internal/zziy;Landroid/content/Context;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zziy$zza;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzix;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zziy$1;->zzIU:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzix;->zzam(Ljava/lang/String;)V

    return-void
.end method
