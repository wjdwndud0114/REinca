.class public Lcom/google/android/gms/drive/zzk;
.super Lcom/google/android/gms/drive/ExecutionOptions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/zzk$zza;
    }
.end annotation


# instance fields
.field private zzaJI:Ljava/lang/String;

.field private zzaJJ:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Lcom/google/android/gms/drive/ExecutionOptions;-><init>(Ljava/lang/String;ZI)V

    iput-object p3, p0, Lcom/google/android/gms/drive/zzk;->zzaJI:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/drive/zzk;->zzaJJ:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/drive/zzk$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/drive/zzk;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/drive/zzk;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/zzk$zza;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzk$zza;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzzH()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "May not set a conflict strategy for new file creation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzzF()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/zzk$zza;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzzG()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/zzk$zza;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzk$zza;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zzk;

    return-object v0
.end method


# virtual methods
.method public zzzJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/zzk;->zzaJI:Ljava/lang/String;

    return-object v0
.end method

.method public zzzK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/zzk;->zzaJJ:Ljava/lang/String;

    return-object v0
.end method
