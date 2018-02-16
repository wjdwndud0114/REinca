.class public Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;
.super Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/HitBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocialBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/HitBuilders$HitBuilder",
        "<",
        "Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;-><init>()V

    const-string v0, "&t"

    const-string v1, "social"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;
    .locals 1

    const-string v0, "&sa"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setNetwork(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;
    .locals 1

    const-string v0, "&sn"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;
    .locals 1

    const-string v0, "&st"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method
