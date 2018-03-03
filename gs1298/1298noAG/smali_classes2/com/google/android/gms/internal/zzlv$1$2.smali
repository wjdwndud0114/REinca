.class Lcom/google/android/gms/internal/zzlv$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlv$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzQF:Lcom/google/android/gms/internal/zzlv$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlv$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv$1$2;->zzQF:Lcom/google/android/gms/internal/zzlv$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqp;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv$1$2;->zzQF:Lcom/google/android/gms/internal/zzlv$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzlv$1;->zzQE:Lcom/google/android/gms/internal/zzlv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlv;->zza(Lcom/google/android/gms/internal/zzlv;)Lcom/google/android/gms/ads/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzr;->zzcu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv$1$2;->zzQF:Lcom/google/android/gms/internal/zzlv$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzlv$1;->zzQD:Lcom/google/android/gms/internal/zzqc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqc;->zzh(Ljava/lang/Object;)V

    return-void
.end method
