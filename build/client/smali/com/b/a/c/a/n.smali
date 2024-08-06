.class public Lcom/b/a/c/a/n;
.super Lcom/b/a/c/a/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/c/a/l",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/b/a/c/a/n;->a:Landroid/content/UriMatcher;

    sget-object v0, Lcom/b/a/c/a/n;->a:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/b/a/c/a/n;->a:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/b/a/c/a/n;->a:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/photo"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/b/a/c/a/n;->a:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/b/a/c/a/n;->a:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/display_photo"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/b/a/c/a/n;->a:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "phone_lookup/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/b/a/c/a/l;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method

.method private a(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;
    .locals 2

    sget-object v0, Lcom/b/a/c/a/n;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p2, p1}, Lcom/b/a/c/a/n;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p2, p1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Contact cannot be found"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/b/a/c/a/n;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected a(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/b/a/c/a/n;->c(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream is null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method protected a(Ljava/io/InputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/b/a/c/a/n;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method protected synthetic b(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/b/a/c/a/n;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
