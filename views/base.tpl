<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../static/index.css">
    <title>{{ title }}</title>
</head>
<body>
    <header class="header">
        <h1>Header</h1>
        <div class="nav-header">
            <a href="/" class="Header-link">Home</a>
            <a href="/About" class="Header-link">About Us</a>
            <a href="/Contacts" class="Header-link">Contacts</a>
        </div>
    </header>

    <section class="main-section">
        <div class="nav-col">
            % for key, value in items.items():
                <ul class="headers-list">
                    <li>{{ key }}
                        <ul class="topics-list">
                            % for item in value:
                                <li><a href="/topics/{{ item }}">{{ item }}</a></li>
                            % end
                        </ul>
                    </li>
                </ul>
            % end
        </div>
        
        <div class="topic">
            {{ !topic }}
        </div>
    </section>

    <footer class="footer">
        <h1>Footer</h1>
    </footer>
</body>
</html>