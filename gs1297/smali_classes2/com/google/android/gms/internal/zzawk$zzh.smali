.class public final Lcom/google/android/gms/internal/zzawk$zzh;
.super Lcom/google/android/gms/internal/zzacl;

# interfaces
.implements Lcom/google/android/gms/plus/model/people/Person$Urls;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzawk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzh"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzawk$zzh;",
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
.field mValue:Ljava/lang/String;

.field final mVersionCode:I

.field zzacb:Ljava/lang/String;

.field zzanR:I

.field private final zzbAV:I

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
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzawu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzawu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzawk$zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzawk$zzh;->zzbAk:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/internal/zzawk$zzh;->zzbAk:Ljava/util/HashMap;

    const-string v1, "label"

    const-string v2, "label"

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/zzack$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzack$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzawk$zzh;->zzbAk:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    new-instance v3, Lcom/google/android/gms/internal/zzach;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzach;-><init>()V

    const-string v4, "home"

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/zzach;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzach;

    move-result-object v3

    const-string v4, "work"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzach;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzach;

    move-result-object v3

    const-string v4, "blog"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzach;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzach;

    move-result-object v3

    const-string v4, "profile"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzach;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzach;

    move-result-object v3

    const-string v4, "other"

    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/internal/zzach;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzach;

    move-result-object v3

    const-string v4, "otherProfile"

    invoke-virtual {v3, v4, v8}, Lcom/google/android/gms/internal/zzach;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzach;

    move-result-object v3

    const-string v4, "contributor"

    invoke-virtual {v3, v4, v9}, Lcom/google/android/gms/internal/zzach;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzach;

    move-result-object v3

    const-string v4, "website"

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzach;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzach;

    move-result-object v3

    invoke-static {v2, v9, v3, v6}, Lcom/google/android/gms/internal/zzack$zza;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzack$zzb;Z)Lcom/google/android/gms/internal/zzack$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzawk$zzh;->zzbAk:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/zzack$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzack$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzacl;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/zzawk$zzh;->zzbAV:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzawk$zzh;->mVersionCode:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzh;->zzbAl:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzacl;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/zzawk$zzh;->zzbAV:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawk$zzh;->zzbAl:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/zzawk$zzh;->mVersionCode:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzawk$zzh;->zzacb:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/zzawk$zzh;->zzanR:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzawk$zzh;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/zzawk$zzh;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzawk$zzh;

    sget-object v0, Lcom/google/android/gms/internal/zzawk$zzh;->zzbAk:Ljava/util/HashMap;

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zzh;->zza(Lcom/google/android/gms/internal/zzack$zza;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzawk$zzh;->zza(Lcom/google/android/gms/internal/zzack$zza;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zzh;->zzb(Lcom/google/android/gms/internal/zzack$zza;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzawk$zzh;->zzb(Lcom/google/android/gms/internal/zzack$zza;)Ljava/lang/Object;

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
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzawk$zzh;->zza(Lcom/google/android/gms/internal/zzack$zza;)Z

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawk$zzh;->zzNQ()Lcom/google/android/gms/internal/zzawk$zzh;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzh;->zzacb:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzawk$zzh;->zzanR:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzh;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hasLabel()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzh;->zzbAl:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzh;->zzbAl:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzh;->zzbAl:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zzawk$zzh;->zzbAk:Ljava/util/HashMap;

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zzh;->zza(Lcom/google/android/gms/internal/zzack$zza;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzack$zza;->zzxQ()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zzh;->zzb(Lcom/google/android/gms/internal/zzack$zza;)Ljava/lang/Object;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzawu;->zza(Lcom/google/android/gms/internal/zzawk$zzh;Landroid/os/Parcel;I)V

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

    sget-object v0, Lcom/google/android/gms/internal/zzawk$zzh;->zzbAk:Ljava/util/HashMap;

    return-object v0
.end method

.method public zzNP()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    return v0
.end method

.method public zzNQ()Lcom/google/android/gms/internal/zzawk$zzh;
    .locals 0

    return-object p0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzack$zza;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzh;->zzbAl:Ljava/util/Set;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzh;->zzacb:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_1
    iget v0, p0, Lcom/google/android/gms/internal/zzawk$zzh;->zzanR:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk$zzh;->mValue:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic zzxK()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawk$zzh;->zzNF()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
