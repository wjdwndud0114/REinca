.class public final Lcom/google/android/gms/internal/zzawk$zzd;
.super Lcom/google/android/gms/internal/zzacl;

# interfaces
.implements Lcom/google/android/gms/plus/model/people/Person$Name;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzawk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzawk$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbAk:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzack$zza",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field zzaik:Ljava/lang/String;

.field zzail:Ljava/lang/String;

.field zzbAM:Ljava/lang/String;

.field zzbAN:Ljava/lang/String;

.field zzbAO:Ljava/lang/String;

.field zzbAP:Ljava/lang/String;

.field final zzbAl:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzawr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzawr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzawk$zzd;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAk:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAk:Ljava/util/HashMap;

    const-string v1, "familyName"

    const-string v2, "familyName"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzack$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzack$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAk:Ljava/util/HashMap;

    const-string v1, "formatted"

    const-string v2, "formatted"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzack$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzack$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAk:Ljava/util/HashMap;

    const-string v1, "givenName"

    const-string v2, "givenName"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzack$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzack$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAk:Ljava/util/HashMap;

    const-string v1, "honorificPrefix"

    const-string v2, "honorificPrefix"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzack$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzack$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAk:Ljava/util/HashMap;

    const-string v1, "honorificSuffix"

    const-string v2, "honorificSuffix"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzack$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzack$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAk:Ljava/util/HashMap;

    const-string v1, "middleName"

    const-string v2, "middleName"

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzack$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzack$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzacl;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->mVersionCode:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAl:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzacl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAl:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/zzawk$zzd;->mVersionCode:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzail:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAM:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzaik:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAN:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAO:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAP:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/zzawk$zzd;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzawk$zzd;

    sget-object v0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAk:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzack$zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zzd;->zza(Lcom/google/android/gms/internal/zzack$zza;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzawk$zzd;->zza(Lcom/google/android/gms/internal/zzack$zza;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zzd;->zzb(Lcom/google/android/gms/internal/zzack$zza;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzawk$zzd;->zzb(Lcom/google/android/gms/internal/zzack$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzawk$zzd;->zza(Lcom/google/android/gms/internal/zzack$zza;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawk$zzd;->zzNM()Lcom/google/android/gms/internal/zzawk$zzd;

    move-result-object v0

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzail:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatted()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAM:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzaik:Ljava/lang/String;

    return-object v0
.end method

.method public getHonorificPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAN:Ljava/lang/String;

    return-object v0
.end method

.method public getHonorificSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAO:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAP:Ljava/lang/String;

    return-object v0
.end method

.method public hasFamilyName()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAl:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasFormatted()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAl:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasGivenName()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAl:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasHonorificPrefix()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAl:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasHonorificSuffix()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAl:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasMiddleName()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAl:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAk:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzack$zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zzd;->zza(Lcom/google/android/gms/internal/zzack$zza;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzack$zza;->zzxQ()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zzd;->zzb(Lcom/google/android/gms/internal/zzack$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzawr;->zza(Lcom/google/android/gms/internal/zzawk$zzd;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzNF()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzack$zza",
            "<**>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAk:Ljava/util/HashMap;

    return-object v0
.end method

.method public zzNM()Lcom/google/android/gms/internal/zzawk$zzd;
    .locals 0

    return-object p0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzack$zza;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAl:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzack$zza;->zzxQ()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected zzb(Lcom/google/android/gms/internal/zzack$zza;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzack$zza;->zzxQ()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzack$zza;->zzxQ()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown safe parcelable id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzail:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAM:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzaik:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAN:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAO:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzd;->zzbAP:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public synthetic zzxK()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawk$zzd;->zzNF()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
