.class public Lcom/tapjoy/mraid/controller/Abstract$ReflectedParcelable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/controller/Abstract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectedParcelable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 360
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 361
    aget-object v2, v1, v0

    .line 363
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 365
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 366
    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    .line 367
    const-string v4, "class com.tapjoy.mraid.util.NavigationStringEnum"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/mraid/util/NavigationStringEnum;->fromString(Ljava/lang/String;)Lcom/tapjoy/mraid/util/NavigationStringEnum;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_1
    const-string v4, "class com.tapjoy.mraid.util.TransitionStringEnum"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/mraid/util/TransitionStringEnum;->fromString(Ljava/lang/String;)Lcom/tapjoy/mraid/util/TransitionStringEnum;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 382
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 388
    :cond_2
    :goto_2
    return-void

    .line 373
    :cond_3
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 374
    instance-of v3, v3, Landroid/os/Parcelable$Creator;

    if-nez v3, :cond_0

    .line 375
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 385
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags1"    # I

    .prologue
    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 395
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 397
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    array-length v1, v0

    if-ge v2, v1, :cond_2

    .line 398
    aget-object v1, v0, v2

    .line 399
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 401
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 402
    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    const-string v4, "class com.tapjoy.mraid.util.NavigationStringEnum"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 404
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/mraid/util/NavigationStringEnum;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/util/NavigationStringEnum;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 405
    :cond_1
    const-string v4, "class com.tapjoy.mraid.util.TransitionStringEnum"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/mraid/util/TransitionStringEnum;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/util/TransitionStringEnum;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 417
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 423
    :cond_2
    :goto_2
    return-void

    .line 409
    :cond_3
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 410
    instance-of v3, v1, Landroid/os/Parcelable$Creator;

    if-nez v3, :cond_0

    .line 411
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 420
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method
