.class public Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordJellyBeanImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;,
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;


# instance fields
.field private final mRecord:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 506
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 507
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordJellyBeanImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordJellyBeanImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    .line 515
    :goto_0
    return-void

    .line 508
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 509
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    goto :goto_0

    .line 510
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 511
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    goto :goto_0

    .line 513
    :cond_2
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    .line 531
    return-void
.end method

.method public static obtain()Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .locals 2

    .prologue
    .line 562
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    invoke-interface {v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->obtain()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .locals 3
    .param p0, "record"    # Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    .prologue
    .line 552
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1027
    if-ne p0, p1, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return v1

    .line 1030
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 1031
    goto :goto_0

    .line 1033
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 1034
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1036
    check-cast v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    .line 1037
    .local v0, "other":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    iget-object v3, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 1038
    iget-object v3, v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    .line 1039
    goto :goto_0

    .line 1041
    :cond_4
    iget-object v3, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    iget-object v4, v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1042
    goto :goto_0
.end method

.method public getAddedCount()I
    .locals 2

    .prologue
    .line 882
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getAddedCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 952
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 922
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 972
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .locals 2

    .prologue
    .line 745
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getCurrentItemIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFromIndex()I
    .locals 2

    .prologue
    .line 768
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getFromIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getImpl()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 725
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getItemCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getMaxScrollX()I
    .locals 2

    .prologue
    .line 847
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getMaxScrollX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getMaxScrollY()I
    .locals 2

    .prologue
    .line 864
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getMaxScrollY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 992
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedCount()I
    .locals 2

    .prologue
    .line 902
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getRemovedCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getScrollX()I
    .locals 2

    .prologue
    .line 811
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getScrollX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .locals 2

    .prologue
    .line 829
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getScrollY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2

    .prologue
    .line 607
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getSource(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 943
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getText(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToIndex()I
    .locals 2

    .prologue
    .line 792
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getToIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getWindowId()I
    .locals 2

    .prologue
    .line 616
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getWindowId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 625
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isChecked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 645
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .locals 2

    .prologue
    .line 685
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isFullScreen(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .locals 2

    .prologue
    .line 665
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isPassword(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 2

    .prologue
    .line 705
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isScrollable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 1016
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->recycle(Ljava/lang/Object;)V

    .line 1017
    return-void
.end method

.method public setAddedCount(I)V
    .locals 2
    .param p1, "addedCount"    # I

    .prologue
    .line 893
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setAddedCount(Ljava/lang/Object;I)V

    .line 894
    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "beforeText"    # Ljava/lang/CharSequence;

    .prologue
    .line 963
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 964
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 636
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setChecked(Ljava/lang/Object;Z)V

    .line 637
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/CharSequence;

    .prologue
    .line 933
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 934
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 983
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 984
    return-void
.end method

.method public setCurrentItemIndex(I)V
    .locals 2
    .param p1, "currentItemIndex"    # I

    .prologue
    .line 756
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setCurrentItemIndex(Ljava/lang/Object;I)V

    .line 757
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 656
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setEnabled(Ljava/lang/Object;Z)V

    .line 657
    return-void
.end method

.method public setFromIndex(I)V
    .locals 2
    .param p1, "fromIndex"    # I

    .prologue
    .line 782
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setFromIndex(Ljava/lang/Object;I)V

    .line 783
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 2
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 696
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setFullScreen(Ljava/lang/Object;Z)V

    .line 697
    return-void
.end method

.method public setItemCount(I)V
    .locals 2
    .param p1, "itemCount"    # I

    .prologue
    .line 736
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setItemCount(Ljava/lang/Object;I)V

    .line 737
    return-void
.end method

.method public setMaxScrollX(I)V
    .locals 2
    .param p1, "maxScrollX"    # I

    .prologue
    .line 855
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setMaxScrollX(Ljava/lang/Object;I)V

    .line 856
    return-void
.end method

.method public setMaxScrollY(I)V
    .locals 2
    .param p1, "maxScrollY"    # I

    .prologue
    .line 873
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setMaxScrollY(Ljava/lang/Object;I)V

    .line 874
    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "parcelableData"    # Landroid/os/Parcelable;

    .prologue
    .line 1003
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V

    .line 1004
    return-void
.end method

.method public setPassword(Z)V
    .locals 2
    .param p1, "isPassword"    # Z

    .prologue
    .line 676
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setPassword(Ljava/lang/Object;Z)V

    .line 677
    return-void
.end method

.method public setRemovedCount(I)V
    .locals 2
    .param p1, "removedCount"    # I

    .prologue
    .line 913
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setRemovedCount(Ljava/lang/Object;I)V

    .line 914
    return-void
.end method

.method public setScrollX(I)V
    .locals 2
    .param p1, "scrollX"    # I

    .prologue
    .line 820
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setScrollX(Ljava/lang/Object;I)V

    .line 821
    return-void
.end method

.method public setScrollY(I)V
    .locals 2
    .param p1, "scrollY"    # I

    .prologue
    .line 838
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setScrollY(Ljava/lang/Object;I)V

    .line 839
    return-void
.end method

.method public setScrollable(Z)V
    .locals 2
    .param p1, "scrollable"    # Z

    .prologue
    .line 716
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setScrollable(Ljava/lang/Object;Z)V

    .line 717
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 2
    .param p1, "source"    # Landroid/view/View;

    .prologue
    .line 573
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    .line 574
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 591
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setSource(Ljava/lang/Object;Landroid/view/View;I)V

    .line 592
    return-void
.end method

.method public setToIndex(I)V
    .locals 2
    .param p1, "toIndex"    # I

    .prologue
    .line 802
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setToIndex(Ljava/lang/Object;I)V

    .line 803
    return-void
.end method
