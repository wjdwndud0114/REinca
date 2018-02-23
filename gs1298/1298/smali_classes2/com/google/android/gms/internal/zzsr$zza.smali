.class Lcom/google/android/gms/internal/zzsr$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzsi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzsi$zza",
        "<",
        "Lcom/google/android/gms/internal/zzss;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzacN:Lcom/google/android/gms/internal/zzrw;

.field private final zzafb:Lcom/google/android/gms/internal/zzss;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsr$zza;->zzacN:Lcom/google/android/gms/internal/zzrw;

    new-instance v0, Lcom/google/android/gms/internal/zzss;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzss;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsr$zza;->zzafb:Lcom/google/android/gms/internal/zzss;

    return-void
.end method


# virtual methods
.method public zzd(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsr$zza;->zzafb:Lcom/google/android/gms/internal/zzss;

    iput p2, v0, Lcom/google/android/gms/internal/zzss;->zzafd:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsr$zza;->zzacN:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    const-string v1, "Int xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzsx;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zze(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "ga_dryRun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsr$zza;->zzafb:Lcom/google/android/gms/internal/zzss;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/google/android/gms/internal/zzss;->zzafe:I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsr$zza;->zzacN:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    const-string v1, "Bool xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzsx;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public zzo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic zzov()Lcom/google/android/gms/internal/zzsh;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsr$zza;->zzpf()Lcom/google/android/gms/internal/zzss;

    move-result-object v0

    return-object v0
.end method

.method public zzp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsr$zza;->zzafb:Lcom/google/android/gms/internal/zzss;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzss;->zzabK:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsr$zza;->zzafb:Lcom/google/android/gms/internal/zzss;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzss;->zzabL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsr$zza;->zzafb:Lcom/google/android/gms/internal/zzss;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzss;->zzafc:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsr$zza;->zzacN:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    const-string v1, "String xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzsx;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zzpf()Lcom/google/android/gms/internal/zzss;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsr$zza;->zzafb:Lcom/google/android/gms/internal/zzss;

    return-object v0
.end method
