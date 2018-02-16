.class public Lcom/igaworks/adpopcorn/cores/common/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .locals 3

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v1, "OTHER_TYPE_BADGE_COLOR"

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x17

    if-ne p0, v1, :cond_1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "INSTALL_TYPE_BADGE_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x6

    if-eq p0, v1, :cond_2

    const/16 v1, 0x19

    if-eq p0, v1, :cond_2

    const/16 v1, 0x18

    if-ne p0, v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "EXECUTE_TYPE_BADGE_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "OTHER_TYPE_BADGE_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Lcom/igaworks/adpopcorn/cores/common/f;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/f;->br:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    const/16 v1, 0x17

    if-ne p1, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/f;->bw:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    const/16 v1, 0x19

    if-eq p1, v1, :cond_3

    const/16 v1, 0x18

    if-ne p1, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/f;->bx:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0x10

    if-eq p1, v1, :cond_5

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_5

    const/16 v1, 0x1b

    if-ne p1, v1, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/f;->bA:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/f;->bD:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "\n"

    const-string v1, "<br>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    int-to-double v2, p2

    mul-double/2addr v2, p10

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez p5, :cond_4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0, p6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    const/4 v0, 0x1

    if-ne p7, v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_2
    :goto_1
    invoke-virtual {p0, p8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz p9, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x20

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, p5, p6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    if-lt p7, v0, :cond_2

    invoke-virtual {p0, p7}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1
.end method

.method public static b(I)I
    .locals 3

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v1, "OTHER_TYPE_BADGE_TEXT_COLOR"

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x17

    if-ne p0, v1, :cond_1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "INSTALL_TYPE_BADGE_TEXT_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x6

    if-eq p0, v1, :cond_2

    const/16 v1, 0x19

    if-eq p0, v1, :cond_2

    const/16 v1, 0x18

    if-ne p0, v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "EXECUTE_TYPE_BADGE_TEXT_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "OTHER_TYPE_BADGE_TEXT_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
