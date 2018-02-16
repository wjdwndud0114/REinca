.class public final Lcom/google/android/gms/internal/zzrf;
.super Lcom/google/android/gms/analytics/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzf",
        "<",
        "Lcom/google/android/gms/internal/zzrf;",
        ">;"
    }
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private zzFy:Ljava/lang/String;

.field private zzGu:Ljava/lang/String;

.field private zzabN:Ljava/lang/String;

.field private zzabO:Ljava/lang/String;

.field private zzabP:Ljava/lang/String;

.field private zzabQ:Ljava/lang/String;

.field private zzabR:Ljava/lang/String;

.field private zzabS:Ljava/lang/String;

.field private zzabT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzf;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzFy:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzGu:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabN:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrf;->mName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrf;->mName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrf;->zzabN:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "medium"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrf;->zzabO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "keyword"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrf;->zzabP:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrf;->zzFy:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrf;->zzGu:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "adNetworkId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrf;->zzabQ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gclid"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrf;->zzabR:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dclid"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrf;->zzabS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aclid"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrf;->zzabT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrf;->zzj(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrf;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->setName(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzbq(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzbr(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzbs(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzFy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzFy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzbt(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzGu:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzGu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzbu(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzbv(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzbw(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzbx(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzby(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/analytics/zzf;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzrf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrf;)V

    return-void
.end method

.method public zzbq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrf;->zzabN:Ljava/lang/String;

    return-void
.end method

.method public zzbr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrf;->zzabO:Ljava/lang/String;

    return-void
.end method

.method public zzbs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrf;->zzabP:Ljava/lang/String;

    return-void
.end method

.method public zzbt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrf;->zzFy:Ljava/lang/String;

    return-void
.end method

.method public zzbu(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrf;->zzGu:Ljava/lang/String;

    return-void
.end method

.method public zzbv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrf;->zzabQ:Ljava/lang/String;

    return-void
.end method

.method public zzbw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrf;->zzabR:Ljava/lang/String;

    return-void
.end method

.method public zzbx(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrf;->zzabS:Ljava/lang/String;

    return-void
.end method

.method public zzby(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrf;->zzabT:Ljava/lang/String;

    return-void
.end method

.method public zzmA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabO:Ljava/lang/String;

    return-object v0
.end method

.method public zzmB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabP:Ljava/lang/String;

    return-object v0
.end method

.method public zzmC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabQ:Ljava/lang/String;

    return-object v0
.end method

.method public zzmD()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabR:Ljava/lang/String;

    return-object v0
.end method

.method public zzmE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabS:Ljava/lang/String;

    return-object v0
.end method

.method public zzmF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzabT:Ljava/lang/String;

    return-object v0
.end method
