.class public Lcom/google/android/gms/drive/zzl$zza;
.super Lcom/google/android/gms/drive/ExecutionOptions$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/zzl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zzaJK:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/drive/zzl$zza;->zzaJK:Z

    return-void
.end method


# virtual methods
.method public synthetic build()Lcom/google/android/gms/drive/ExecutionOptions;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/zzl$zza;->zzzN()Lcom/google/android/gms/drive/zzl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzl$zza;->zzea(I)Lcom/google/android/gms/drive/zzl$zza;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzl$zza;->zzau(Z)Lcom/google/android/gms/drive/zzl$zza;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzl$zza;->zzdK(Ljava/lang/String;)Lcom/google/android/gms/drive/zzl$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzau(Z)Lcom/google/android/gms/drive/zzl$zza;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method

.method public zzdK(Ljava/lang/String;)Lcom/google/android/gms/drive/zzl$zza;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method

.method public zzea(I)Lcom/google/android/gms/drive/zzl$zza;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method

.method public zzzN()Lcom/google/android/gms/drive/zzl;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/drive/zzl$zza;->zzzI()V

    new-instance v0, Lcom/google/android/gms/drive/zzl;

    iget-object v1, p0, Lcom/google/android/gms/drive/zzl$zza;->zzaJF:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/drive/zzl$zza;->zzaJG:Z

    iget v3, p0, Lcom/google/android/gms/drive/zzl$zza;->zzaJH:I

    iget-boolean v4, p0, Lcom/google/android/gms/drive/zzl$zza;->zzaJK:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/zzl;-><init>(Ljava/lang/String;ZIZLcom/google/android/gms/drive/zzl$1;)V

    return-object v0
.end method
