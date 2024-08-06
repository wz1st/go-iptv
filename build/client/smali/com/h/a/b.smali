.class public Lcom/h/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a()Z
    .locals 1

    invoke-static {}, Lcom/h/a/c;->a()Lcom/h/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/h/a/c;->c()Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/h/a/c;->a()Lcom/h/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/h/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/h/a/c;->a()Lcom/h/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/h/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lcom/h/a/c;->a()Lcom/h/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/h/a/c;->d()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lcom/h/a/c;->a()Lcom/h/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/h/a/c;->e()Z

    move-result v0

    return v0
.end method
